//
//  mapViewController.h
//  scroller
//
//  Created by Clay Ellis on 6/21/10.
//  Copyright HD Applications 2010. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface mapViewController : UIViewController {
	IBOutlet UIButton *goBack;
	IBOutlet UILabel *mapLabel;
}

@property (nonatomic, retain) UIButton *goBack;
@property (nonatomic, retain) UILabel *mapLabel;

- (IBAction)goBackTouch:(id)sender;

@end
