//
//  MPSAppDelegate.m
//  MPSPlaceholderTextView
//
//  Created by Matthew Strickland on 8/20/13.
//  Copyright (c) 2013 Idle Fusion. All rights reserved.
//

#import "MPSAppDelegate.h"

#import "MPSDemoViewController.h"

@implementation MPSAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	
	MPSDemoViewController *viewController = [[MPSDemoViewController alloc] init];
	UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:viewController];
	self.window.rootViewController = navigationController;
	
	self.window.backgroundColor = [UIColor whiteColor];
	[self.window makeKeyAndVisible];
	return YES;
}

@end
