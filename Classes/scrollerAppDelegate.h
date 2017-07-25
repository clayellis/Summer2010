//
//  scrollerAppDelegate.h
//  scroller
//
//  Created by Clay Ellis on 6/21/10.
//  Copyright HD Applications 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class scrollerViewController;

@interface scrollerAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    scrollerViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet scrollerViewController *viewController;

@end

