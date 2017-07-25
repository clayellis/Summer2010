//
//  scrollerAppDelegate.m
//  scroller
//
//  Created by Clay Ellis on 6/21/10.
//  Copyright HD Applications 2010. All rights reserved.
//

#import "scrollerAppDelegate.h"
#import "scrollerViewController.h"

@implementation scrollerAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
		
	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
