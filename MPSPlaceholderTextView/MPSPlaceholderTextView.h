//
//  MPSPlaceholderTextView.h
//  MPSPlaceholderTextView
//
//  Created by Matthew Strickland on 8/20/13.
//  Copyright (c) 2013 Idle Fusion. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MPSPlaceholderTextView : UITextView

@property (nonatomic, strong) UILabel *placeHolderLabel;
@property (nonatomic, strong) NSString *placeholder;
@property (nonatomic, strong) UIColor *placeholderColor;

-(void)textChanged:(NSNotification*)notification;

@end
