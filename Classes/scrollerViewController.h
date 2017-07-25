//
//  scrollerViewController.h
//  scroller
//
//  Created by Clay Ellis on 6/21/10.
//  Copyright HD Applications 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "menuViewController.h"
#import "mapViewController.h"
#import "infoViewController.h"

@interface scrollerViewController : UIViewController <UIScrollViewDelegate> {
	
	
	IBOutlet UIScrollView *scroller;
	IBOutlet UIImageView *planetOne;
	IBOutlet UIImageView *planetTwo;
	IBOutlet UIImageView *planetThree;
	IBOutlet UIImageView *planetFour;
	IBOutlet UIImageView *planetFive;
	IBOutlet UIImageView *planetSix;
	IBOutlet UIImageView *planetSeven;
	IBOutlet UIImageView *planetEight;
	IBOutlet UIImageView *planetNine;
	IBOutlet UIImageView *planetTen;
	IBOutlet UIImageView *planetEleven;
	IBOutlet UIImageView *planetTwelve;
	IBOutlet UIImageView *planetThirteen;
	IBOutlet UIImageView *planetFourteen;
	IBOutlet UIImageView *planetFifteen;
	
	IBOutlet UIImageView *blur;

	IBOutlet UIView *insideView;
	
	IBOutlet NSMutableArray *anim1;
	IBOutlet NSMutableArray *anim2;
	IBOutlet NSMutableArray *anim3;
	IBOutlet NSMutableArray *anim4;
	IBOutlet NSMutableArray *anim5;
	IBOutlet NSMutableArray *anim6;
	IBOutlet NSMutableArray *anim7;
	IBOutlet NSMutableArray *anim8;
	IBOutlet NSMutableArray *anim9;
	IBOutlet NSMutableArray *anim10;
	IBOutlet NSMutableArray *anim11;
	IBOutlet NSMutableArray *anim12;
	IBOutlet NSMutableArray *anim13;
	IBOutlet NSMutableArray *anim14;
	IBOutlet NSMutableArray *anim15;
	
	IBOutlet UIButton *plusUp;
	
	IBOutlet UIButton *pOneB;
	IBOutlet UIButton *pTwoB;
	IBOutlet UIButton *pThreeB;
	IBOutlet UIButton *pFourB;
	IBOutlet UIButton *pFiveB;
	IBOutlet UIButton *pSixB;
	IBOutlet UIButton *pSevenB;
	IBOutlet UIButton *pEightB;
	IBOutlet UIButton *pNineB;
	IBOutlet UIButton *pTenB;
	IBOutlet UIButton *pElevenB;
	IBOutlet UIButton *pTwelveB;
	IBOutlet UIButton *pThirteenB;
	IBOutlet UIButton *pFourteenB;
	IBOutlet UIButton *pFifteenB;
	
	IBOutlet UIImageView *pearl;
	IBOutlet UIButton *more;
	IBOutlet UIButton *move;
	IBOutlet UIButton *cancel;
	
	int pOneXRand;
	int pOneYRand;
	
	int pTwoXRand;
	int pTwoYRand;
	
	int pThreeXRand;
	int pThreeYRand;
	
	int pFourXRand;
	int pFourYRand;
	
	int pFiveXRand;
	int pFiveYRand;
	
	int pSixXRand;
	int pSixYRand;
	
	int pSevenXRand;
	int pSevenYRand;
	
	int pEightXRand;
	int pEightYRand;
	
	int pNineXRand;
	int pNineYRand;
	
	int pTenXRand;
	int pTenYRand;
	
	int pElevenXRand;
	int pElevenYRand;
	
	int pTwelveXRand;
	int pTwelveYRand;
	
	int pThirteenXRand;
	int pThirteenYRand;
	
	int pFourteenXRand;
	int pFourteenYRand;
	
	int pFifteenXRand;
	int pFifteenYRand;
	
	int pOneImageRand;
	int pTwoImageRand;
	int pThreeImageRand;
	int pFourImageRand;
	int pFiveImageRand;
	int pSixImageRand;
	int pSevenImageRand;
	int pEightImageRand;
	int pNineImageRand;
	int pTenImageRand;
	
	int pElevenImageRand;
	int pTwelveImageRand;
	int pThirteenImageRand;
	int pFourteenImageRand;
	int pFifteenImageRand;
	
	int pZoomOutX;
	int pZoomOutY;

	IBOutlet UIImageView *resourceOne;
	IBOutlet UIImageView *resourceTwo;
	IBOutlet UIImageView *resourceThree;
	IBOutlet UIImageView *resourceFour;
	IBOutlet UIImageView *researchOne;
	IBOutlet UIImageView *researchTwo;
	IBOutlet UIImageView *researchThree;
	IBOutlet UIImageView *researchFour;
	IBOutlet UIImageView *manuOne;
	IBOutlet UIImageView *manuTwo;
	IBOutlet UIImageView *manuThree;
	IBOutlet UIImageView *manuFour;
	IBOutlet UIImageView *defenseOne;
	IBOutlet UIImageView *defenseTwo;
	IBOutlet UIImageView *defenseThree;
	IBOutlet UIImageView *defenseFour;
	

	IBOutlet UIImageView *br;
	IBOutlet UIImageView *bl;
	IBOutlet UIImageView *bm;
	IBOutlet UIButton *brb;
	IBOutlet UIButton *blb;
	IBOutlet UIButton *bmb;
	
	IBOutlet UILabel *counter;
	
	IBOutlet UIButton *fillOne;
	IBOutlet UIButton *fillTwo;
	IBOutlet UIButton *fillThree;
	IBOutlet UIButton *fillFour;
	
	IBOutlet UIImageView *fillOneF;
	IBOutlet UIImageView *fillTwoF;
	IBOutlet UIImageView *fillThreeF;
	IBOutlet UIImageView *fillFourF;
	
	IBOutlet UIButton *tabOne;
	IBOutlet UIButton *tabTwo;
	IBOutlet UIButton *tabThree;
	IBOutlet UIButton *tabFour;
	
	IBOutlet UIImageView *selectText;
	
	IBOutlet UIImageView *box;
	
	IBOutlet UIImageView *whiteLine;
	
	IBOutlet UIImageView *fillerHolder;
	
	IBOutlet UILabel *infoLabel;
	IBOutlet UILabel *bigLabel;
	
	IBOutlet UIButton *checkB;
	IBOutlet UIButton *xB;
	
	UIImageView *myImage;
	
	IBOutlet UIImageView *dotCirc;
	
	IBOutlet UIButton *menuPiece;
	IBOutlet UIButton *mapPiece;
	IBOutlet UIButton *infoPiece;
	
	IBOutlet UIButton *menuCancel;
    
    CGContextRef(distanceCirc);

}

@property (nonatomic, retain) UIButton *menuPiece;
@property (nonatomic, retain) UIButton *mapPiece;
@property (nonatomic, retain) UIButton *infoPiece;

@property (nonatomic, retain) UIButton *menuCancel;

@property (nonatomic, retain) UIImageView *myImage;
@property (nonatomic, retain) UIImageView *dotCirc;

@property (nonatomic, retain) UIScrollView *scroller;
@property (nonatomic, retain) UIImageView *planetOne;
@property (nonatomic, retain) UIImageView *planetTwo;
@property (nonatomic, retain) UIImageView *planetThree;
@property (nonatomic, retain) UIImageView *planetFour;
@property (nonatomic, retain) UIImageView *planetFive;
@property (nonatomic, retain) UIImageView *planetSix;
@property (nonatomic, retain) UIImageView *planetSeven;
@property (nonatomic, retain) UIImageView *planetEight;
@property (nonatomic, retain) UIImageView *planetNine;
@property (nonatomic, retain) UIImageView *planetTen;
@property (nonatomic, retain) UIImageView *planetEleven;
@property (nonatomic, retain) UIImageView *planetTwelve;
@property (nonatomic, retain) UIImageView *planetThirteen;
@property (nonatomic, retain) UIImageView *planetFourteen;
@property (nonatomic, retain) UIImageView *planetFifteen;

@property (nonatomic, retain) UIImageView *blur;

@property (nonatomic, retain) UIView *insideView;

@property (nonatomic, retain) NSMutableArray *anim1;
@property (nonatomic, retain) NSMutableArray *anim2;
@property (nonatomic, retain) NSMutableArray *anim3;
@property (nonatomic, retain) NSMutableArray *anim4;
@property (nonatomic, retain) NSMutableArray *anim5;
@property (nonatomic, retain) NSMutableArray *anim6;
@property (nonatomic, retain) NSMutableArray *anim7;
@property (nonatomic, retain) NSMutableArray *anim8;
@property (nonatomic, retain) NSMutableArray *anim9;
@property (nonatomic, retain) NSMutableArray *anim10;
@property (nonatomic, retain) NSMutableArray *anim11;
@property (nonatomic, retain) NSMutableArray *anim12;
@property (nonatomic, retain) NSMutableArray *anim13;
@property (nonatomic, retain) NSMutableArray *anim14;
@property (nonatomic, retain) NSMutableArray *anim15;

@property (nonatomic, retain) UIButton *plusUp;

@property (nonatomic, retain) UIButton *pOneB;
@property (nonatomic, retain) UIButton *pTwoB;
@property (nonatomic, retain) UIButton *pThreeB;
@property (nonatomic, retain) UIButton *pFourB;
@property (nonatomic, retain) UIButton *pFiveB;
@property (nonatomic, retain) UIButton *pSixB;
@property (nonatomic, retain) UIButton *pSevenB;
@property (nonatomic, retain) UIButton *pEightB;
@property (nonatomic, retain) UIButton *pNineB;
@property (nonatomic, retain) UIButton *pTenB;
@property (nonatomic, retain) UIButton *pElevenB;
@property (nonatomic, retain) UIButton *pTwelveB;
@property (nonatomic, retain) UIButton *pThirteenB;
@property (nonatomic, retain) UIButton *pFourteenB;
@property (nonatomic, retain) UIButton *pFifteenB;

@property (nonatomic, retain) UIImageView *pearl;
@property (nonatomic, retain) UIButton *more;
@property (nonatomic, retain) UIButton *move;
@property (nonatomic, retain) UIButton *cancel;


@property (nonatomic, retain) UIImageView *resourceOne;
@property (nonatomic, retain) UIImageView *resourceTwo;
@property (nonatomic, retain) UIImageView *resourceThree;
@property (nonatomic, retain) UIImageView *resourceFour;
@property (nonatomic, retain) UIImageView *researchOne;
@property (nonatomic, retain) UIImageView *researchTwo;
@property (nonatomic, retain) UIImageView *researchThree;
@property (nonatomic, retain) UIImageView *researchFour;
@property (nonatomic, retain) UIImageView *manuOne;
@property (nonatomic, retain) UIImageView *manuTwo;
@property (nonatomic, retain) UIImageView *manuThree;
@property (nonatomic, retain) UIImageView *manuFour;
@property (nonatomic, retain) UIImageView *defenseOne;
@property (nonatomic, retain) UIImageView *defenseTwo;
@property (nonatomic, retain) UIImageView *defenseThree;
@property (nonatomic, retain) UIImageView *defenseFour;


@property (nonatomic, retain) UIImageView *br;
@property (nonatomic, retain) UIImageView *bl;
@property (nonatomic, retain) UIImageView *bm;

@property (nonatomic, retain) UIButton *brb;
@property (nonatomic, retain) UIButton *blb;
@property (nonatomic, retain) UIButton *bmb;

@property (nonatomic, retain) UILabel *counter;

@property (nonatomic, retain) UIButton *fillOne;
@property (nonatomic, retain) UIButton *fillTwo;
@property (nonatomic, retain) UIButton *fillThree;
@property (nonatomic, retain) UIButton *fillFour;

@property (nonatomic, retain) UIImageView *fillOneF;
@property (nonatomic, retain) UIImageView *fillTwoF;
@property (nonatomic, retain) UIImageView *fillThreeF;
@property (nonatomic, retain) UIImageView *fillFourF;

@property (nonatomic, retain) UIButton *tabOne;
@property (nonatomic, retain) UIButton *tabTwo;
@property (nonatomic, retain) UIButton *tabThree;
@property (nonatomic, retain) UIButton *tabFour;

@property (nonatomic, retain) UIImageView *selectText;

@property (nonatomic, retain) UIImageView *box;

@property (nonatomic, retain) UIImageView *whiteLine;

@property (nonatomic, retain) UIImageView *fillerHolder;

@property (nonatomic, retain) UILabel *infoLabel;
@property (nonatomic, retain) UILabel *bigLabel;

@property (nonatomic, retain) UIButton *checkB;
@property (nonatomic, retain) UIButton *xB;

- (IBAction)pOneBTouch:(id)sender;
- (IBAction)pTwoBTouch:(id)sender;
- (IBAction)pThreeBTouch:(id)sender;
- (IBAction)pFourBTouch:(id)sender;
- (IBAction)pFiveBTouch:(id)sender;
- (IBAction)pSixBTouch:(id)sender;
- (IBAction)pSevenBTouch:(id)sender;
- (IBAction)pEightBTouch:(id)sender;
- (IBAction)pNineBTouch:(id)sender;
- (IBAction)pTenBTouch:(id)sender;
- (IBAction)pElevenBTouch:(id)sender;
- (IBAction)pTwelveBTouch:(id)sender;
- (IBAction)pThirteenBTouch:(id)sender;
- (IBAction)pFourteenBTouch:(id)sender;
- (IBAction)pFifteenBTouch:(id)sender;

- (IBAction)cancelTouch:(id)sender;
- (IBAction)moreTouch:(id)sender;
- (IBAction)moveTouch:(id)sender;

- (IBAction)brbTouch:(id)sender;
- (IBAction)blbTouch:(id)sender;
- (IBAction)bmbTouch:(id)sender;


- (IBAction)fillOneTouch:(id)sender;
- (IBAction)fillTwoTouch:(id)sender;
- (IBAction)fillThreeTouch:(id)sender;
- (IBAction)fillFourTouch:(id)sender;

- (IBAction)tabOneTouch:(id)sender;
- (IBAction)tabTwoTouch:(id)sender;
- (IBAction)tabThreeTouch:(id)sender;
- (IBAction)tabFourTouch:(id)sender;

- (IBAction)checkBTouch:(id)sender;
- (IBAction)xBTouch:(id)sender;

- (IBAction)menuCancelTouch:(id)sender;

- (IBAction)mainMenuTouch:(id)sender;
- (IBAction)mapTouch:(id)sender;
- (IBAction)infoTouch:(id)sender;

-(void)drawInContext:(CGContextRef)context;
-(void)drawRect:(CGRect)rect;

@end

