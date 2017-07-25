//
//  menuViewController.h
//  scroller
//
//  Created by Clay Ellis on 6/21/10.
//  Copyright HD Applications 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface menuViewController : UIViewController {
	IBOutlet UIButton *goBack;
	IBOutlet UILabel *menuLabel;
}

@property (nonatomic, retain) UIButton *goBack;
@property (nonatomic, retain) UILabel *menuLabel;

- (IBAction)goBackTouch:(id)sender;


@end
