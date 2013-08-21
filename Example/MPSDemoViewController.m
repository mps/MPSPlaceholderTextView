//
//  MPSDemoViewController.m
//  MPSPlaceholderTextView
//
//  Created by Matthew Strickland on 8/20/13.
//  Copyright (c) 2013 Idle Fusion. All rights reserved.
//

#import "MPSDemoViewController.h"

@interface MPSDemoViewController ()

@property (nonatomic, strong) id editingField;

@end

@implementation MPSDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.title = @"MPSPlaceholderTextView";	
	self.placeholderTextView.placeholder = @"Hello Friends :)";
	
	MPSPlaceholderTextView *placeho = [[MPSPlaceholderTextView alloc] initWithFrame:CGRectMake(20.0f, 20.0f, 200.0f, 80.0f)];
}

@end
