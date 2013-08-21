//
//  MPSPlaceholderTextView.m
//  MPSPlaceholderTextView
//
//  Created by Matthew Strickland on 8/20/13.
//  Copyright (c) 2013 Idle Fusion. All rights reserved.
//

#import "MPSPlaceholderTextView.h"

#define PLACEHOLDER_DEFAULT_TAG					777
#define PLACEHOLDER_DEFAULT_TEXT				@""
#define PLACEHOLDER_DEFAULT_TEXTCOLOR			[UIColor lightGrayColor]
#define PLACEHOLDER_DEFAULT_BACKGROUND_COLOR	[UIColor clearColor]
#define PLACEHOLDER_DEFAULT_ALPHA				0
#define PLACEHOLDER_DEFAULT_LINEBREAKMODE		NSLineBreakByWordWrapping
#define PLACEHOLDER_DEFAULT_NUMBEROFLINES		0

@implementation MPSPlaceholderTextView

@synthesize placeHolderLabel;
@synthesize placeholder;
@synthesize placeholderColor;

- (void)awakeFromNib {
    [super awakeFromNib];
	
	[self setupView];
	[self setupNotifications];
}

- (id)initWithFrame:(CGRect)frame {
    if((self = [super initWithFrame:frame])) {
		[self setupView];
		[self setupNotifications];
    }
    return self;
}

- (void)setupView {
	[self setPlaceholder:PLACEHOLDER_DEFAULT_TEXT];
	[self setPlaceholderColor:PLACEHOLDER_DEFAULT_TEXTCOLOR];
}

- (void)setupNotifications {	
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UITextViewTextDidChangeNotification object:nil];
	[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textChanged:) name:UITextViewTextDidChangeNotification object:nil];
}

- (void)textChanged:(NSNotification *)notification {
    if(![self placeholderHasText]) return;
	
	int alpha = [self textViewHasText] ? 0.0f : 1.0f;
	[self showViewWithAlpha:alpha];
}

- (void)setText:(NSString *)text {
    [super setText:text];
	
    [self textChanged:nil];
}

- (void)drawRect:(CGRect)rect {
    if([self placeholderHasText]) {
        if (placeHolderLabel == nil ) {
            placeHolderLabel = [[UILabel alloc] initWithFrame:CGRectMake(8,8,self.bounds.size.width - 16,0)];
            
			// DEFAULTS			
			placeHolderLabel.tag = PLACEHOLDER_DEFAULT_TAG;
            placeHolderLabel.backgroundColor = PLACEHOLDER_DEFAULT_BACKGROUND_COLOR;
            placeHolderLabel.alpha = PLACEHOLDER_DEFAULT_ALPHA;
            placeHolderLabel.lineBreakMode = PLACEHOLDER_DEFAULT_LINEBREAKMODE;
            placeHolderLabel.numberOfLines = PLACEHOLDER_DEFAULT_NUMBEROFLINES;
			
			// PROPERTIES
            placeHolderLabel.textColor = self.placeholderColor;
            placeHolderLabel.font = self.font;
			
            [self addSubview:placeHolderLabel];
        }
		
        placeHolderLabel.text = self.placeholder;
        [placeHolderLabel sizeToFit];		
        [self sendSubviewToBack:placeHolderLabel];
		
		if (![self textViewHasText]) {
			[self showViewWithAlpha:1];
		}
    }
    
    [super drawRect:rect];
}

- (void)showViewWithAlpha:(int)alpha {
	[[self viewWithTag:PLACEHOLDER_DEFAULT_TAG] setAlpha:alpha];
}

- (BOOL)placeholderHasText {
	return [[self placeholder] length] > 0;
}

- (BOOL)textViewHasText {
	return [[self text] length] > 0;
}

@end
