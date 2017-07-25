//
//  selectedViewController.h
//  scroller
//
//  Created by Chad Ellis on 6/30/10.
//  Copyright 2010 Hammond and Ellis. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SelectedViewController : UIViewController {
	IBOutlet UIImageView *planet;
	IBOutlet UIImageView *pearl;
	IBOutlet UIButton * move;
	IBOutlet UIButton * more;
	IBOutlet UIButton * cancel;
}
@property (nonatomic, retain) UIImageView *planet;
@property (nonatomic, retain) UIImageView *pearl;
@property (nonatomic, retain) UIButton *move;
@property (nonatomic, retain) UIButton *more;
@property (nonatomic, retain) UIButton *cancel;

- (IBAction)moveTouch:(id)sender;
- (IBAction)moreTouch:(id)sender;
- (IBAction)cancelTouch:(id)sender;
@end
