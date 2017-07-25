//
//  scrollerViewController.m
//  scroller
//
//  Created by Clay Ellis on 6/21/10.
//  Copyright HD Applications 2010. All rights reserved.
//

#import "scrollerViewController.h"

@implementation scrollerViewController

BOOL planetSelected = NO;
int whichPlanet = 0;
int counterValue = 2500;

@synthesize myImage;
@synthesize scroller;
@synthesize planetOne;
@synthesize planetTwo;
@synthesize planetThree;
@synthesize planetFour;
@synthesize planetFive;
@synthesize planetSix;
@synthesize planetSeven;
@synthesize planetEight;
@synthesize planetNine;
@synthesize planetTen;
@synthesize planetEleven;
@synthesize planetTwelve;
@synthesize planetThirteen;
@synthesize planetFourteen;
@synthesize planetFifteen;

@synthesize insideView;

@synthesize anim1;
@synthesize anim2;
@synthesize anim3;
@synthesize anim4;
@synthesize anim5;
@synthesize anim6;
@synthesize anim7;
@synthesize anim8;
@synthesize anim9;
@synthesize anim10;
@synthesize anim11;
@synthesize anim12;
@synthesize anim13;
@synthesize anim14;
@synthesize anim15;

 
@synthesize plusUp;

@synthesize pOneB;
@synthesize pTwoB;
@synthesize pThreeB;
@synthesize pFourB;
@synthesize pFiveB;
@synthesize pSixB;
@synthesize pSevenB;
@synthesize pEightB;
@synthesize pNineB;
@synthesize pTenB;
@synthesize pElevenB;
@synthesize pTwelveB;
@synthesize pThirteenB;
@synthesize pFourteenB;
@synthesize pFifteenB;

@synthesize pearl;
@synthesize more;
@synthesize move;
@synthesize cancel;
@synthesize blur;


@synthesize resourceOne;
@synthesize resourceTwo;
@synthesize resourceThree;
@synthesize resourceFour;
@synthesize researchOne;
@synthesize researchTwo;
@synthesize researchThree;
@synthesize researchFour;
@synthesize manuOne;
@synthesize manuTwo;
@synthesize manuThree;
@synthesize manuFour;
@synthesize defenseOne;
@synthesize defenseTwo;
@synthesize defenseThree;
@synthesize defenseFour;


@synthesize br;
@synthesize bl;
@synthesize bm;
@synthesize brb;
@synthesize blb;
@synthesize bmb;

@synthesize counter;

@synthesize fillOne;
@synthesize fillTwo;
@synthesize fillThree;
@synthesize fillFour;

@synthesize fillOneF;
@synthesize fillTwoF;
@synthesize fillThreeF;
@synthesize fillFourF;

@synthesize tabOne;
@synthesize tabTwo;
@synthesize tabThree;
@synthesize tabFour;

@synthesize selectText;

@synthesize box;
@synthesize whiteLine;

@synthesize fillerHolder;

@synthesize infoLabel;
@synthesize bigLabel;

@synthesize checkB;
@synthesize xB;

@synthesize dotCirc;

@synthesize menuPiece;
@synthesize mapPiece;
@synthesize infoPiece;

@synthesize menuCancel;

BOOL mored = NO;
BOOL shown = NO;


int pMoreX;
int pMoreY;

BOOL fillOneFilled = NO;
BOOL fillTwoFilled = NO;
BOOL fillThreeFilled = NO;
BOOL fillFourFilled = NO;


BOOL resourceOneFill = NO;
BOOL resourceTwoFill = NO;
BOOL resourceThreeFill = NO;
BOOL resourceFourFill = NO;

BOOL researchOneFill = NO;
BOOL researchTwoFill = NO;
BOOL researchThreeFill = NO;
BOOL researchFourFill = NO;

BOOL buildOneFill = NO;
BOOL buildTwoFill = NO;
BOOL buildThreeFill = NO;
BOOL buildFourFill = NO;

BOOL defenseOneFill = NO;
BOOL defenseTwoFill = NO;
BOOL defenseThreeFill = NO;
BOOL defenseFourFill = NO;

int resourceKeeper = 0;
int researchKeeper = 0;
int buildKeeper = 0;
int defenseKeeper = 0;
int tabber = 1;

BOOL menuUp = NO;
BOOL usingPlanet = NO;

-(void)drawRect:(CGRect)rect
{
	[self drawInContext:UIGraphicsGetCurrentContext()];
}

-(void)drawInContext:(CGContextRef)context
{
	CGContextSetRGBFillColor(context, 255, 0, 0, 1);
	CGContextSetLineWidth(context, 10);
	CGContextAddArc(context, pZoomOutX, pZoomOutY, 100, 0, 2 * M_PI, 1);
	CGContextStrokePath(context);
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
	return self.insideView;
}

- (IBAction)brbTouch:(id)sender{
	
}

- (IBAction)blbTouch:(id)sender{
	
}

- (IBAction)bmbTouch:(id)sender
{
	if(menuUp == NO)
	{
	menuPiece.hidden = NO;
	mapPiece.hidden = NO;
	infoPiece.hidden = NO;
	menuCancel.hidden = NO;
	
	menuCancel.alpha = 0;
	
	[menuPiece setCenter:CGPointMake(-200, -100)];
	[mapPiece setCenter:CGPointMake(160, 680)];
	[infoPiece setCenter:CGPointMake(520, -100)];
	[menuCancel setCenter:CGPointMake(160, 240)];
	
	
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:.6];
	
	[menuPiece setCenter:CGPointMake(95,200)];
	[mapPiece setCenter:CGPointMake(155, 320)];
	[infoPiece setCenter:CGPointMake(232, 207)];
	
	insideView.alpha = .4;
	
	
	[UIView commitAnimations];
		
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:.3];
		
	bm.transform = CGAffineTransformMakeTranslation(0, -10);
		
	[UIView commitAnimations];
		
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:.9];
		
	menuCancel.alpha = 1;
		
	[UIView commitAnimations];
	
	insideView.userInteractionEnabled = NO;
	scroller.scrollEnabled = NO;
		menuUp = YES;

	/*	
	(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
		return nil;
	}
	 */
		
	} else if (menuUp == YES)
	{[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.6];
		
		[menuPiece setCenter:CGPointMake(-200, -100)];
		[mapPiece setCenter:CGPointMake(160, 680)];
		[infoPiece setCenter:CGPointMake(520, -100)];
		
		bm.transform = CGAffineTransformMakeTranslation(0, 0);
		
		insideView.alpha = 1;
		menuCancel.alpha = 0;
		
		[UIView commitAnimations];
		
		insideView.userInteractionEnabled = YES;
		scroller.scrollEnabled = YES;
		menuUp = NO;

		/*
		(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
		 return self.insideView;
		 }*/
		
	}
}

- (IBAction)menuCancelTouch:(id)sender{
	
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:.6];
	
	[menuPiece setCenter:CGPointMake(-200, -100)];
	[mapPiece setCenter:CGPointMake(160, 680)];
	[infoPiece setCenter:CGPointMake(520, -100)];
	
	bm.transform = CGAffineTransformMakeTranslation(0, 0);
	
	insideView.alpha = 1;
	menuCancel.alpha = 0;
	
	[UIView commitAnimations];
	
	insideView.userInteractionEnabled = YES;
	
	if(usingPlanet == YES){
		scroller.scrollEnabled = NO;
		} else if (usingPlanet == NO){
			scroller.scrollEnabled = YES;
		}
	
	/*(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
		return self.insideView;
	}*/
	
	menuUp = NO;
}

- (IBAction)mainMenuTouch:(id)sender{
	
	 menuViewController *Menu = [[menuViewController alloc] initWithNibName:nil bundle:nil];
	 [self presentModalViewController:Menu animated:YES];
	 
}

- (IBAction)mapTouch:(id)sender{
	
	 mapViewController *Map = [[mapViewController alloc] initWithNibName:nil bundle:nil];
	 [self presentModalViewController:Map animated:YES];
	 
}

- (IBAction)infoTouch:(id)sender{
	
	 infoViewController *Info = [[infoViewController alloc] initWithNibName:nil bundle:nil];
	 [self presentModalViewController:Info animated:YES];
	 
}

- (IBAction)checkBTouch:(id)sender{

	checkB.hidden = YES;
	xB.hidden = YES;
	 
	if (tabber == 1)
	{
		if(resourceKeeper == 0)
		{
			
			counterValue -= 100;
			if (counterValue < 0){
				counterValue += 100;
				fillOneF.hidden = YES;
				fillOneF.alpha = 1;
				infoLabel.text = [NSString stringWithFormat:@"not enough resources!"];
			} else if (counterValue > 0){
			resourceKeeper = 1;
				fillOne.userInteractionEnabled = NO;
				fillTwo.userInteractionEnabled = YES;
				fillThree.userInteractionEnabled = NO;
				fillFour.userInteractionEnabled = NO;
				fillOneF.hidden = NO;
				fillOneF.alpha = 1;
				infoLabel.text = [NSString stringWithFormat:@"resources: upgrade to earn more money per turn"];
			}
			
			
		}
		else if(resourceKeeper == 1)
		{
			
			counterValue -= 150;
			if (counterValue < 0){
				counterValue += 150;
				fillTwoF.hidden = YES;
				fillTwoF.alpha = 1;
				infoLabel.text = [NSString stringWithFormat:@"not enough resources!"];
			} else if (counterValue > 0){
				resourceKeeper = 2;
				fillOne.userInteractionEnabled = NO;
				fillTwo.userInteractionEnabled = NO;
				fillThree.userInteractionEnabled = YES;
				fillFour.userInteractionEnabled = NO;
				fillTwoF.hidden = NO;
				fillTwoF.alpha = 1;
				infoLabel.text = [NSString stringWithFormat:@"resources: upgrade to earn more money per turn"];
			}
			
			
		}
		else if (resourceKeeper == 2)
		{
			
			counterValue -= 250;
			if (counterValue < 0){
				counterValue += 250;
				fillThreeF.hidden = YES;
				fillThreeF.alpha = 1;
				infoLabel.text = [NSString stringWithFormat:@"not enough resources!"];
			} else if (counterValue > 0){
				resourceKeeper = 3;
				fillOne.userInteractionEnabled = NO;
				fillTwo.userInteractionEnabled = NO;
				fillThree.userInteractionEnabled = NO;
				fillFour.userInteractionEnabled = YES;
				fillThreeF.hidden = NO;
				fillThreeF.alpha = 1;
				infoLabel.text = [NSString stringWithFormat:@"resources: upgrade to earn more money per turn"];
			}
			
			
		}
		else if (resourceKeeper == 3)
		{
			
			counterValue -= 400;
			if (counterValue < 0){
				counterValue += 400;
				fillFourF.hidden = YES;
				fillFourF.alpha = 1;
				infoLabel.text = [NSString stringWithFormat:@"not enough resources!"];
			} else if (counterValue > 0){
				resourceKeeper = 4;
				fillOne.userInteractionEnabled = NO;
				fillTwo.userInteractionEnabled = NO;
				fillThree.userInteractionEnabled = NO;
				fillFour.userInteractionEnabled = NO;
				fillFourF.hidden = NO;
				fillFourF.alpha = 1;
				infoLabel.text = [NSString stringWithFormat:@"resources: upgrade to earn more money per turn"];
			}
			
			
			
		}
		
	} else if (tabber == 2)
	{
		
		if(researchKeeper == 0)
		{
			
			counterValue -= 100;
			if (counterValue < 0){
				counterValue += 100;
				fillOneF.hidden = YES;
				fillOneF.alpha = 1;
				infoLabel.text = [NSString stringWithFormat:@"not enough resources!"];
			} else if (counterValue > 0){
				researchKeeper = 1;
				fillOne.userInteractionEnabled = NO;
				fillTwo.userInteractionEnabled = YES;
				fillThree.userInteractionEnabled = NO;
				fillFour.userInteractionEnabled = NO;
				fillOneF.hidden = NO;
				fillOneF.alpha = 1;
				infoLabel.text = [NSString stringWithFormat:@"research: upgrade to increase max starship travel distance"];
			}
			
			
			
		}
		else if(researchKeeper == 1)
		{
			
			counterValue -= 150;
			if (counterValue < 0){
				counterValue += 150;
				fillTwoF.hidden = YES;
				fillTwoF.alpha = 1;
				infoLabel.text = [NSString stringWithFormat:@"not enough resources!"];
			} else if (counterValue > 0){
				researchKeeper = 2;
				fillOne.userInteractionEnabled = NO;
				fillTwo.userInteractionEnabled = NO;
				fillThree.userInteractionEnabled = YES;
				fillFour.userInteractionEnabled = NO;
				fillTwoF.hidden = NO;
				fillTwoF.alpha = 1;
				infoLabel.text = [NSString stringWithFormat:@"research: upgrade to increase max starship travel distance"];
			}
			
			
			
		}
		else if (researchKeeper == 2)
		{
			
			counterValue -= 250;
			if (counterValue < 0){
				counterValue += 250;
				fillThreeF.hidden = YES;
				fillThreeF.alpha = 1;
				infoLabel.text = [NSString stringWithFormat:@"not enough resources!"];
			} else if (counterValue > 0){
				researchKeeper = 3;
				fillOne.userInteractionEnabled = NO;
				fillTwo.userInteractionEnabled = NO;
				fillThree.userInteractionEnabled = NO;
				fillFour.userInteractionEnabled = YES;
				fillThreeF.hidden = NO;
				fillThreeF.alpha = 1;
				infoLabel.text = [NSString stringWithFormat:@"research: upgrade to increase max starship travel distance"];
			}
			
			
			
		}
		else if (researchKeeper == 3)
		{
			
			counterValue -= 400;
			if (counterValue < 0){
				counterValue += 400;
				fillFourF.hidden = YES;
				fillFourF.alpha = 1;
				infoLabel.text = [NSString stringWithFormat:@"not enough resources!"];
			} else if (counterValue > 0){
				researchKeeper = 4;
				fillOne.userInteractionEnabled = NO;
				fillTwo.userInteractionEnabled = NO;
				fillThree.userInteractionEnabled = NO;
				fillFour.userInteractionEnabled = NO;
				fillFourF.hidden = NO;
				fillFourF.alpha = 1;
				infoLabel.text = [NSString stringWithFormat:@"research: upgrade to increase max starship travel distance"];
			}
			
			
			
		}
		
		
	} else if (tabber == 3)
	{
		if(buildKeeper == 0)
		{
			
			counterValue -= 100;
			if (counterValue < 0){
				counterValue += 100;
				fillOneF.hidden = YES;
				fillOneF.alpha = 1;
				infoLabel.text = [NSString stringWithFormat:@"not enough resources!"];
			} else if (counterValue > 0){
				buildKeeper = 1;
				
				fillOne.userInteractionEnabled = NO;
				fillTwo.userInteractionEnabled = YES;
				fillThree.userInteractionEnabled = NO;
				fillFour.userInteractionEnabled = NO;
				fillOneF.hidden = NO;
				fillOneF.alpha = 1;
				infoLabel.text = [NSString stringWithFormat:@"manufacture: upgrade to build more starships per turn"];
			}
			
			
		}
		else if(buildKeeper == 1)
		{
			
			counterValue -= 150;
			if (counterValue < 0){
				counterValue += 150;
				fillTwoF.hidden = YES;
				fillTwoF.alpha = 1;
				infoLabel.text = [NSString stringWithFormat:@"not enough resources!"];
			} else if (counterValue > 0){
				buildKeeper = 2;
				fillOne.userInteractionEnabled = NO;
				fillTwo.userInteractionEnabled = NO;
				fillThree.userInteractionEnabled = YES;
				fillFour.userInteractionEnabled = NO;
				fillTwoF.hidden = NO;
				fillTwoF.alpha = 1;
				infoLabel.text = [NSString stringWithFormat:@"manufacture: upgrade to build more starships per turn"];
			}
			
			
			
		}
		else if (buildKeeper == 2)
		{
			
			counterValue -= 250;
			if (counterValue < 0){
				counterValue += 250;
				fillThreeF.hidden = YES;
				fillThreeF.alpha = 1;
				infoLabel.text = [NSString stringWithFormat:@"not enough resources!"];
			} else if (counterValue > 0){
				buildKeeper = 3;
				fillOne.userInteractionEnabled = NO;
				fillTwo.userInteractionEnabled = NO;
				fillThree.userInteractionEnabled = NO;
				fillFour.userInteractionEnabled = YES;
				fillThreeF.hidden = NO;
				fillThreeF.alpha = 1;
				infoLabel.text = [NSString stringWithFormat:@"manufacture: upgrade to build more starships per turn"];
			}
			
			
			
		}
		else if (buildKeeper == 3)
		{
			
			counterValue -= 400;
			if (counterValue < 0){
				counterValue += 400;
				fillFourF.hidden = YES;
				fillFourF.alpha = 1;
				infoLabel.text = [NSString stringWithFormat:@"not enough resources!"];
			} else if (counterValue > 0){
				buildKeeper = 4;
				fillOne.userInteractionEnabled = NO;
				fillTwo.userInteractionEnabled = NO;
				fillThree.userInteractionEnabled = NO;
				fillFour.userInteractionEnabled = NO;
				fillFourF.hidden = NO;
				fillFourF.alpha = 1;
				infoLabel.text = [NSString stringWithFormat:@"manufacture: upgrade to build more starships per turn"];
			}
			
			
			
		}
		
	} else if (tabber == 4)
	{
		if(defenseKeeper == 0)
		{
			
			counterValue -= 100;
			if (counterValue < 0){
				counterValue += 100;
				fillOneF.hidden = YES;
				fillOneF.alpha = 1;
				infoLabel.text = [NSString stringWithFormat:@"not enough resources!"];
			} else if (counterValue > 0){
				defenseKeeper = 1;
				fillOne.userInteractionEnabled = NO;
				fillTwo.userInteractionEnabled = YES;
				fillThree.userInteractionEnabled = NO;
				fillFour.userInteractionEnabled = NO;
				fillOneF.hidden = NO;
				fillOneF.alpha = 1;
				infoLabel.text = [NSString stringWithFormat:@"defense: upgrade to defend against larger attacks"];
			}
			
			
			
		}
		else if(defenseKeeper == 1)
		{
			
			counterValue -= 150;
			if (counterValue < 0){
				counterValue += 150;
				fillTwoF.hidden = YES;
				fillTwoF.alpha = 1;
				infoLabel.text = [NSString stringWithFormat:@"not enough resources!"];
			} else if (counterValue > 0){
				defenseKeeper = 2;
				fillOne.userInteractionEnabled = NO;
				fillTwo.userInteractionEnabled = NO;
				fillThree.userInteractionEnabled = YES;
				fillFour.userInteractionEnabled = NO;
				fillTwoF.hidden = NO;
				fillTwoF.alpha = 1;
				infoLabel.text = [NSString stringWithFormat:@"defense: upgrade to defend against larger attacks"];
			}
			
			
			
		}
		else if (defenseKeeper == 2)
		{
			
			counterValue -= 250;
			if (counterValue < 0){
				counterValue += 250;
				fillThreeF.hidden = YES;
				fillThreeF.alpha = 1;
				infoLabel.text = [NSString stringWithFormat:@"not enough resources!"];
			} else if (counterValue > 0){
				defenseKeeper = 3;
				fillOne.userInteractionEnabled = NO;
				fillTwo.userInteractionEnabled = NO;
				fillThree.userInteractionEnabled = NO;
				fillFour.userInteractionEnabled = YES;
				fillThreeF.hidden = NO;
				fillThreeF.alpha = 1;
				infoLabel.text = [NSString stringWithFormat:@"defense: upgrade to defend against larger attacks"];
			}
			
			
			
		}
		else if (defenseKeeper == 3)
		{
			
			counterValue -= 400;
			if (counterValue < 0){
				counterValue += 400;
				fillFourF.hidden = YES;
				fillFourF.alpha = 1;
				infoLabel.text = [NSString stringWithFormat:@"not enough resources!"];
			} else if (counterValue > 0){
				defenseKeeper = 4;
				fillOne.userInteractionEnabled = NO;
				fillTwo.userInteractionEnabled = NO;
				fillThree.userInteractionEnabled = NO;
				fillFour.userInteractionEnabled = NO;
				fillFourF.hidden = NO;
				fillFourF.alpha = 1;
				infoLabel.text = [NSString stringWithFormat:@"defense: upgrade to defend against larger attacks"];
			}
			
			
		}
		
	}
	
	counter.text = [NSString stringWithFormat:@"$%d", counterValue];
	
	
}
 

- (IBAction)xBTouch:(id)sender{
	
	checkB.hidden = YES;
	xB.hidden = YES;
	
	
	if (tabber == 1)
	{
		if(resourceKeeper == 0)
		{
			fillOneF.alpha = 0;
		}
		else if(resourceKeeper == 1)
		{
			fillTwoF.alpha = 0;
		}
		else if (resourceKeeper == 2)
		{
			fillThreeF.alpha = 0;
		}
		else if (resourceKeeper == 3)
		{
			fillFourF.alpha = 0;
		}
		infoLabel.text = [NSString stringWithFormat:@"resources: upgrade to earn more money per turn"];
	} else if (tabber == 2)
	{
		
		if(researchKeeper == 0)
		{
			fillOneF.alpha = 0;
		}
		else if(researchKeeper == 1)
		{
			fillTwoF.alpha = 0;
		}
		else if (researchKeeper == 2)
		{
			fillThreeF.alpha = 0;
		}
		else if (researchKeeper == 3)
		{
			fillFourF.alpha = 0;
		}
		infoLabel.text = [NSString stringWithFormat:@"research: upgrade to increase max starship travel distance"];
		
	} else if (tabber == 3)
	{
		if(buildKeeper == 0)
		{
			fillOneF.alpha = 0;
		}
		else if(buildKeeper == 1)
		{
			fillTwoF.alpha = 0;
		}
		else if (buildKeeper == 2)
		{
			fillThreeF.alpha = 0;
		}
		else if (buildKeeper == 3)
		{
			fillFourF.alpha = 0;
		}
		infoLabel.text = [NSString stringWithFormat:@"manufacture: upgrade to build more starships per turn"];
	} else if (tabber == 4)
	{
		if(defenseKeeper == 0)
		{
			fillOneF.alpha = 0;
		}
		else if(defenseKeeper == 1)
		{
			fillTwoF.alpha = 0;
		}
		else if (defenseKeeper == 2)
		{
			fillThreeF.alpha = 0;
		}
		else if (defenseKeeper == 3)
		{
			fillFourF.alpha = 0;
		}
		infoLabel.text = [NSString stringWithFormat:@"defense: upgrade to defend against larger attacks"];
	}
	
}



- (IBAction)tabOneTouch:(id)sender{
	tabber = 1;
	
	[whiteLine setCenter:CGPointMake(pMoreX - 93, pMoreY - 116)];
	
	resourceOne.alpha = 1;
	researchOne.alpha = .4;
	manuOne.alpha = .4;
	defenseOne.alpha = .4;
	
	fillOneF.alpha = 1;
	fillTwoF.alpha = 1;
	fillThreeF.alpha = 1;
	fillFourF.alpha = 1;
	
	bigLabel.text = [NSString stringWithFormat:@"resources"];
	infoLabel.text = [NSString stringWithFormat:@"resources: upgrade to earn more money per turn"];
	
	checkB.hidden = YES;
	xB.hidden = YES;
	
	if (resourceKeeper == 0)
	{
		fillOne.userInteractionEnabled = YES;
		fillTwo.userInteractionEnabled = NO;
		fillThree.userInteractionEnabled = NO;
		fillFour.userInteractionEnabled = NO;
		
		fillOneF.hidden = YES;
		fillTwoF.hidden = YES;
		fillThreeF.hidden = YES;
		fillFourF.hidden = YES;
	} else if (resourceKeeper == 1)
	{
		fillOne.userInteractionEnabled = NO;
		fillTwo.userInteractionEnabled = YES;
		fillThree.userInteractionEnabled = NO;
		fillFour.userInteractionEnabled = NO;
		
		fillOneF.hidden = NO;
		fillTwoF.hidden = YES;
		fillThreeF.hidden = YES;
		fillFourF.hidden = YES;
	} else if (resourceKeeper == 2)
	{
		fillOne.userInteractionEnabled = NO;
		fillTwo.userInteractionEnabled = NO;
		fillThree.userInteractionEnabled = YES;
		fillFour.userInteractionEnabled = NO;
		
		fillOneF.hidden = NO;
		fillTwoF.hidden = NO;
		fillThreeF.hidden = YES;
		fillFourF.hidden = YES;
	} else if (resourceKeeper == 3)
	{
		fillOne.userInteractionEnabled = NO;
		fillTwo.userInteractionEnabled = NO;
		fillThree.userInteractionEnabled = NO;
		fillFour.userInteractionEnabled = YES;
		
		fillOneF.hidden = NO;
		fillTwoF.hidden = NO;
		fillThreeF.hidden = NO;
		fillFourF.hidden = YES;
	} else if (resourceKeeper == 4)
	{
		fillOne.userInteractionEnabled = NO;
		fillTwo.userInteractionEnabled = NO;
		fillThree.userInteractionEnabled = NO;
		fillFour.userInteractionEnabled = NO;
		
		fillOneF.hidden = NO;
		fillTwoF.hidden = NO;
		fillThreeF.hidden = NO;
		fillFourF.hidden = NO;
	}
}

- (IBAction)tabTwoTouch:(id)sender{
	tabber = 2;
	selectText.image = [UIImage imageNamed:@"research text.png"];
	
	[whiteLine setCenter:CGPointMake(pMoreX - 32, pMoreY - 116)];
		
	resourceOne.alpha = .4;
	researchOne.alpha = 1;
	manuOne.alpha = .4;
	defenseOne.alpha = .4;
	
	fillOneF.alpha = 1;
	fillTwoF.alpha = 1;
	fillThreeF.alpha = 1;
	fillFourF.alpha = 1;
	
	bigLabel.text = [NSString stringWithFormat:@"research"];
	infoLabel.text = [NSString stringWithFormat:@"research: upgrade to increase max starship travel distance"];
	
	checkB.hidden = YES;
	xB.hidden = YES;
	
	if (researchKeeper == 0)
	{
		fillOne.userInteractionEnabled = YES;
		fillTwo.userInteractionEnabled = NO;
		fillThree.userInteractionEnabled = NO;
		fillFour.userInteractionEnabled = NO;
		
		fillOneF.hidden = YES;
		fillTwoF.hidden = YES;
		fillThreeF.hidden = YES;
		fillFourF.hidden = YES;
	} else if (researchKeeper == 1)
	{
		fillOne.userInteractionEnabled = NO;
		fillTwo.userInteractionEnabled = YES;
		fillThree.userInteractionEnabled = NO;
		fillFour.userInteractionEnabled = NO;
		
		fillOneF.hidden = NO;
		fillTwoF.hidden = YES;
		fillThreeF.hidden = YES;
		fillFourF.hidden = YES;
	} else if (researchKeeper == 2)
	{
		fillOne.userInteractionEnabled = NO;
		fillTwo.userInteractionEnabled = NO;
		fillThree.userInteractionEnabled = YES;
		fillFour.userInteractionEnabled = NO;
		
		fillOneF.hidden = NO;
		fillTwoF.hidden = NO;
		fillThreeF.hidden = YES;
		fillFourF.hidden = YES;
	} else if (researchKeeper == 3)
	{
		fillOne.userInteractionEnabled = NO;
		fillTwo.userInteractionEnabled = NO;
		fillThree.userInteractionEnabled = NO;
		fillFour.userInteractionEnabled = YES;
		
		fillOneF.hidden = NO;
		fillTwoF.hidden = NO;
		fillThreeF.hidden = NO;
		fillFourF.hidden = YES;
	} else if (researchKeeper == 4)
	{
		fillOne.userInteractionEnabled = NO;
		fillTwo.userInteractionEnabled = NO;
		fillThree.userInteractionEnabled = NO;
		fillFour.userInteractionEnabled = NO;
		
		fillOneF.hidden = NO;
		fillTwoF.hidden = NO;
		fillThreeF.hidden = NO;
		fillFourF.hidden = NO;
	}
}

- (IBAction)tabThreeTouch:(id)sender{
	tabber = 3;
	selectText.image = [UIImage imageNamed:@"build text.png"];
	
	[whiteLine setCenter:CGPointMake(pMoreX + 29, pMoreY - 116)];
	
	resourceOne.alpha = .4;
	researchOne.alpha = .4;
	manuOne.alpha = 1;
	defenseOne.alpha = .4;
	
	fillOneF.alpha = 1;
	fillTwoF.alpha = 1;
	fillThreeF.alpha = 1;
	fillFourF.alpha = 1;
	
	bigLabel.text = [NSString stringWithFormat:@"manufacture"];
	infoLabel.text = [NSString stringWithFormat:@"manufacture: upgrade to build more starships per turn"];
	
	checkB.hidden = YES;
	xB.hidden = YES;
	
	if (buildKeeper == 0)
	{
		fillOne.userInteractionEnabled = YES;
		fillTwo.userInteractionEnabled = NO;
		fillThree.userInteractionEnabled = NO;
		fillFour.userInteractionEnabled = NO;
		
		fillOneF.hidden = YES;
		fillTwoF.hidden = YES;
		fillThreeF.hidden = YES;
		fillFourF.hidden = YES;
		
	} else if (buildKeeper == 1)
	{
		fillOne.userInteractionEnabled = NO;
		fillTwo.userInteractionEnabled = YES;
		fillThree.userInteractionEnabled = NO;
		fillFour.userInteractionEnabled = NO;
		
		fillOneF.hidden = NO;
		fillTwoF.hidden = YES;
		fillThreeF.hidden = YES;
		fillFourF.hidden = YES;
		
	} else if (buildKeeper == 2)
	{
		fillOne.userInteractionEnabled = NO;
		fillTwo.userInteractionEnabled = NO;
		fillThree.userInteractionEnabled = YES;
		fillFour.userInteractionEnabled = NO;
		
		fillOneF.hidden = NO;
		fillTwoF.hidden = NO;
		fillThreeF.hidden = YES;
		fillFourF.hidden = YES;
		
	} else if (buildKeeper == 3)
	{
		fillOne.userInteractionEnabled = NO;
		fillTwo.userInteractionEnabled = NO;
		fillThree.userInteractionEnabled = NO;
		fillFour.userInteractionEnabled = YES;
		
		fillOneF.hidden = NO;
		fillTwoF.hidden = NO;
		fillThreeF.hidden = NO;
		fillFourF.hidden = YES;
		
	} else if (buildKeeper == 4)
	{
		fillOne.userInteractionEnabled = NO;
		fillTwo.userInteractionEnabled = NO;
		fillThree.userInteractionEnabled = NO;
		fillFour.userInteractionEnabled = NO;
		
		fillOneF.hidden = NO;
		fillTwoF.hidden = NO;
		fillThreeF.hidden = NO;
		fillFourF.hidden = NO;
		
	}
}

- (IBAction)tabFourTouch:(id)sender{
	tabber = 4;
	selectText.image = [UIImage imageNamed:@"defense text.png"];
	
	[whiteLine setCenter:CGPointMake(pMoreX + 90, pMoreY - 115)];	
	
	resourceOne.alpha = .4;
	researchOne.alpha = .4;
	manuOne.alpha = .4;
	defenseOne.alpha = 1;
	
	fillOneF.alpha = 1;
	fillTwoF.alpha = 1;
	fillThreeF.alpha = 1;
	fillFourF.alpha = 1;
	
	bigLabel.text = [NSString stringWithFormat:@"defense"];
	infoLabel.text = [NSString stringWithFormat:@"defense: upgrade to defend against larger attacks"];
	
	checkB.hidden = YES;
	xB.hidden = YES;
	
	if (defenseKeeper == 0)
	{
		fillOne.userInteractionEnabled = YES;
		fillTwo.userInteractionEnabled = NO;
		fillThree.userInteractionEnabled = NO;
		fillFour.userInteractionEnabled = NO;
		
		fillOneF.hidden = YES;
		fillTwoF.hidden = YES;
		fillThreeF.hidden = YES;
		fillFourF.hidden = YES;
	} else if (defenseKeeper == 1)
	{
		fillOne.userInteractionEnabled = NO;
		fillTwo.userInteractionEnabled = YES;
		fillThree.userInteractionEnabled = NO;
		fillFour.userInteractionEnabled = NO;
		
		fillOneF.hidden = NO;
		fillTwoF.hidden = YES;
		fillThreeF.hidden = YES;
		fillFourF.hidden = YES;
	} else if (defenseKeeper == 2)
	{
		fillOne.userInteractionEnabled = NO;
		fillTwo.userInteractionEnabled = NO;
		fillThree.userInteractionEnabled = YES;
		fillFour.userInteractionEnabled = NO;
		
		fillOneF.hidden = NO;
		fillTwoF.hidden = NO;
		fillThreeF.hidden = YES;
		fillFourF.hidden = YES;
	} else if (defenseKeeper == 3)
	{
		fillOne.userInteractionEnabled = NO;
		fillTwo.userInteractionEnabled = NO;
		fillThree.userInteractionEnabled = NO;
		fillFour.userInteractionEnabled = YES;
		
		fillOneF.hidden = NO;
		fillTwoF.hidden = NO;
		fillThreeF.hidden = NO;
		fillFourF.hidden = YES;
	} else if (defenseKeeper == 4)
	{
		fillOne.userInteractionEnabled = NO;
		fillTwo.userInteractionEnabled = NO;
		fillThree.userInteractionEnabled = NO;
		fillFour.userInteractionEnabled = NO;
		
		fillOneF.hidden = NO;
		fillTwoF.hidden = NO;
		fillThreeF.hidden = NO;
		fillFourF.hidden = NO;
	}
}


- (IBAction)fillOneTouch:(id)sender{
	fillOneF.hidden = NO;
	fillOneF.alpha = .4;
	
	checkB.hidden = NO;
	xB.hidden = NO;
	
	[checkB setCenter:CGPointMake(pMoreX + 100, pMoreY - 55)];
	[xB setCenter:CGPointMake(pMoreX - 100, pMoreY - 55)];
	
	if (tabber == 1)
	{
		if (resourceKeeper == 0)
		{
			fillOneFilled = YES;
			fillOneF.hidden = NO;
		}
		infoLabel.text = [NSString stringWithFormat:@"upgrade resources to lvl one? \n cost: $100"];
		
	} else if (tabber == 2)
	{
		if (researchKeeper == 0)
		{
			fillOneFilled = YES;
			fillOneF.hidden = NO;
		}
		infoLabel.text = [NSString stringWithFormat:@"upgrade research to lvl one? \n cost: $100"];
		
	} else if (tabber == 3)
	{
		if (buildKeeper == 0)
		{
			fillOneFilled = YES;
			fillOneF.hidden = NO;
		}
		infoLabel.text = [NSString stringWithFormat:@"upgrade factories to lvl one? \n cost: $100"];
		
	} else if (tabber == 4)
	{
		if (defenseKeeper == 0)
		{
			fillOneFilled = YES;
			fillOneF.hidden = NO;
		}
		infoLabel.text = [NSString stringWithFormat:@"upgrade defenses to lvl one? \n cost: $100"];
		
	}
	
	
}

- (IBAction)fillTwoTouch:(id)sender{
	fillTwoF.hidden = NO;
	fillTwoF.alpha = .4;
	
	checkB.hidden = NO;
	xB.hidden = NO;
	
	[checkB setCenter:CGPointMake(pMoreX + 100, pMoreY - 55)];
	[xB setCenter:CGPointMake(pMoreX - 100, pMoreY - 55)];
	
	if (tabber == 1)
	{
		if (resourceKeeper == 1)
		{
			fillTwoFilled = YES;
			fillTwoF.hidden = NO;
		}
		infoLabel.text = [NSString stringWithFormat:@"upgrade resources to lvl two? \n cost: $150"];
	} else if (tabber == 2)
	{
		if (researchKeeper == 1)
		{
			fillTwoFilled = YES;
			fillTwoF.hidden = NO;
		}
		infoLabel.text = [NSString stringWithFormat:@"upgrade research to lvl two? \n cost: $150"];
	} else if (tabber == 3)
	{
		if (buildKeeper == 1)
		{
			fillTwoFilled = YES;
			fillTwoF.hidden = NO;
		}
		infoLabel.text = [NSString stringWithFormat:@"upgrade factories to lvl two? \n cost: $150"];
	} else if (tabber == 4)
	{
		if (defenseKeeper == 1)
		{
			fillTwoFilled = YES;
			fillTwoF.hidden = NO;
		}
		infoLabel.text = [NSString stringWithFormat:@"upgrade defenses to lvl two? \n cost: $150"];
	}
	
	
}

- (IBAction)fillThreeTouch:(id)sender{
	fillThreeF.hidden = NO;
	fillThreeF.alpha = .4;
	
	checkB.hidden = NO;
	xB.hidden = NO;
	
	
	/*
	fillOne.userInteractionEnabled = NO;
	fillTwo.userInteractionEnabled = NO;
	fillFour.userInteractionEnabled = NO;
	*/
	
	
	[checkB setCenter:CGPointMake(pMoreX + 100, pMoreY - 55)];
	[xB setCenter:CGPointMake(pMoreX - 100, pMoreY - 55)];
	

	if (tabber == 1)
	{
		if (resourceKeeper == 2)
		{
			fillThreeFilled = YES;
			fillThreeF.hidden = NO;
		}
		infoLabel.text = [NSString stringWithFormat:@"upgrade resources to lvl three? \n cost: $250"];
	} else if (tabber == 2)
	{
		if (researchKeeper == 2)
		{
			fillThreeFilled = YES;
			fillThreeF.hidden = NO;
		}
		infoLabel.text = [NSString stringWithFormat:@"upgrade research to lvl three? \n cost: $250"];
	} else if (tabber == 3)
	{
		if (buildKeeper == 2)
		{
			fillThreeFilled = YES;
			fillThreeF.hidden = NO;
		}
		infoLabel.text = [NSString stringWithFormat:@"upgrade factories to lvl three? \n cost: $250"];
	} else if (tabber == 4)
	{
		if (defenseKeeper == 2)
		{
			fillThreeFilled = YES;
			fillThreeF.hidden = NO;
		}
		infoLabel.text = [NSString stringWithFormat:@"upgrade defenses to lvl three? \n  cost: $250"];
	}
}

- (IBAction)fillFourTouch:(id)sender{
	fillFourF.hidden = NO;
	fillFourF.alpha = .4;
	
	checkB.hidden = NO;
	xB.hidden = NO;
	
	
	/*
	fillOne.userInteractionEnabled = NO;
	fillTwo.userInteractionEnabled = NO;
	fillThree.userInteractionEnabled = NO;
	*/
	
	
	[checkB setCenter:CGPointMake(pMoreX + 100, pMoreY - 55)];
	[xB setCenter:CGPointMake(pMoreX - 100, pMoreY - 55)];
	
	if (tabber == 1)
	{
		if (resourceKeeper == 3)
		{
			fillFourFilled = YES;
			fillFourF.hidden = NO;
		}
		infoLabel.text = [NSString stringWithFormat:@"upgrade resources to lvl four? \n cost: $400"];
	} else if (tabber == 2)
	{
		if (researchKeeper == 3)
		{
			fillFourFilled = YES;
			fillFourF.hidden = NO;
		}
		infoLabel.text = [NSString stringWithFormat:@"upgrade research to lvl four? \n cost: $400"];
	} else if (tabber == 3)
	{
		if (buildKeeper == 3)
		{
			fillFourFilled = YES;
			fillFourF.hidden = NO;
		}
		infoLabel.text = [NSString stringWithFormat:@"upgrade factories to lvl four? \n cost: $400"];
	} else if (tabber == 4)
	{
		if (defenseKeeper == 3)
		{
			fillFourFilled = YES;
			fillFourF.hidden = NO;
		}
		infoLabel.text = [NSString stringWithFormat:@"upgrade defenses to lvl four? \n  cost: $400"];
	}
	
}

- (IBAction)cancelTouch:(id)sender{
	if (mored == NO)
	{
		usingPlanet = NO;

	if (whichPlanet == 1){
		pZoomOutX = pOneXRand;
		pZoomOutY = pOneYRand;
	} else if (whichPlanet == 2){
		pZoomOutX = pTwoXRand;
		pZoomOutY = pTwoYRand;
	} else if (whichPlanet == 3){
		pZoomOutX = pThreeXRand;
		pZoomOutY = pThreeYRand;
	} else if (whichPlanet == 4){
		pZoomOutX = pFourXRand;
		pZoomOutY = pFourYRand;
	} else if (whichPlanet == 5){
		pZoomOutX = pFiveXRand;
		pZoomOutY = pFiveYRand;
	} else if (whichPlanet == 6){
		pZoomOutX = pSixXRand;
		pZoomOutY = pSixYRand;
	} else if (whichPlanet == 7){
		pZoomOutX = pSevenXRand;
		pZoomOutY = pSevenYRand;
	} else if (whichPlanet == 8){
		pZoomOutX = pEightXRand;
		pZoomOutY = pEightYRand;
	} else if (whichPlanet == 9){
		pZoomOutX = pNineXRand;
		pZoomOutY = pNineYRand;
	} else if (whichPlanet == 10){
		pZoomOutX = pTenXRand;
		pZoomOutY = pTenYRand;
	} else if (whichPlanet == 11){
		pZoomOutX = pElevenXRand;
		pZoomOutY = pElevenYRand;
	} else if (whichPlanet == 12){
		pZoomOutX = pTwelveXRand;
		pZoomOutY = pTwelveYRand;
	} else if (whichPlanet == 13){
		pZoomOutX = pThirteenXRand;
		pZoomOutY = pThirteenYRand;
	} else if (whichPlanet == 14){
		pZoomOutX = pFourteenXRand;
		pZoomOutY = pFourteenYRand;
	} else if (whichPlanet == 15){
		pZoomOutX = pFifteenXRand;
		pZoomOutY = pFifteenYRand;
	}
		
		
	CGRect zoomRect = CGRectMake(pZoomOutX - 320, pZoomOutY - 480, 640, 920);
	[scroller zoomToRect:zoomRect  animated:YES];
	
	
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:.5];
	pearl.transform = CGAffineTransformIdentity;
	more.transform = CGAffineTransformIdentity;
	move.transform = CGAffineTransformIdentity;
	cancel.transform = CGAffineTransformIdentity;
	[UIView commitAnimations];
	
	planetSelected = NO;
	blur.hidden = YES;
		[pOneB setUserInteractionEnabled:YES];
		[pTwoB setUserInteractionEnabled:YES];
		[pThreeB setUserInteractionEnabled:YES];
		[pFourB setUserInteractionEnabled:YES];
		[pFiveB setUserInteractionEnabled:YES];
		[pSixB setUserInteractionEnabled:YES];
		[pSevenB setUserInteractionEnabled:YES];
		[pEightB setUserInteractionEnabled:YES];
		[pNineB setUserInteractionEnabled:YES];
		[pTenB setUserInteractionEnabled:YES];
		[pElevenB setUserInteractionEnabled:YES];
		[pTwelveB setUserInteractionEnabled:YES];
		[pThirteenB setUserInteractionEnabled:YES];
		[pFourteenB setUserInteractionEnabled:YES];
		[pFifteenB setUserInteractionEnabled:YES];
		[scroller setScrollEnabled:YES];
		
		//enable (disable first) zoom 
		
	}
	
	
	if (mored == YES)
	{
		mored = NO;
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		
		planetOne.transform = CGAffineTransformMakeTranslation(0, 0);
		planetTwo.transform = CGAffineTransformMakeTranslation(0, 0);
		planetThree.transform = CGAffineTransformMakeTranslation(0, 0);
		planetFour.transform = CGAffineTransformMakeTranslation(0, 0);
		planetFive.transform = CGAffineTransformMakeTranslation(0, 0);
		planetSix.transform = CGAffineTransformMakeTranslation(0, 0);
		planetSeven.transform = CGAffineTransformMakeTranslation(0, 0);
		planetEight.transform = CGAffineTransformMakeTranslation(0, 0);
		planetNine.transform = CGAffineTransformMakeTranslation(0, 0);
		planetTen.transform = CGAffineTransformMakeTranslation(0, 0);
		planetEleven.transform = CGAffineTransformMakeTranslation(0, 0);
		planetTwelve.transform = CGAffineTransformMakeTranslation(0, 0);
		planetThirteen.transform = CGAffineTransformMakeTranslation(0, 0);
		planetFourteen.transform = CGAffineTransformMakeTranslation(0, 0);
		planetFifteen.transform = CGAffineTransformMakeTranslation(0, 0);
		
		pOneB.transform = CGAffineTransformMakeTranslation(0, 0);
		pTwoB.transform = CGAffineTransformMakeTranslation(0, 0);
		pThreeB.transform = CGAffineTransformMakeTranslation(0, 0);
		pFourB.transform = CGAffineTransformMakeTranslation(0, 0);
		pFiveB.transform = CGAffineTransformMakeTranslation(0, 0);
		pSixB.transform = CGAffineTransformMakeTranslation(0, 0);
		pSevenB.transform = CGAffineTransformMakeTranslation(0, 0);
		pEightB.transform = CGAffineTransformMakeTranslation(0, 0);
		pNineB.transform = CGAffineTransformMakeTranslation(0, 0);
		pTenB.transform = CGAffineTransformMakeTranslation(0, 0);
		pElevenB.transform = CGAffineTransformMakeTranslation(0, 0);
		pTwelveB.transform = CGAffineTransformMakeTranslation(0, 0);
		pThirteenB.transform = CGAffineTransformMakeTranslation(0, 0);
		pFourteenB.transform = CGAffineTransformMakeTranslation(0, 0);
		pFifteenB.transform = CGAffineTransformMakeTranslation(0, 0);
		[UIView commitAnimations];
				
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:1];
		pearl.alpha = 1;	
		more.alpha = 1;
		move.alpha = 1;
		[UIView commitAnimations];
		
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		cancel.transform = CGAffineTransformMakeTranslation(0, 100);
		
		resourceOne.alpha = 0;
		resourceTwo.alpha = 0;
		resourceThree.alpha = 0;
		resourceFour.alpha = 0;
		researchOne.alpha = 0;
		researchTwo.alpha = 0;
		researchThree.alpha = 0;
		researchFour.alpha = 0;
		manuOne.alpha = 0;
		manuTwo.alpha = 0;
		manuThree.alpha = 0;
		manuFour.alpha = 0;
		defenseOne.alpha = 0;
		defenseTwo.alpha = 0;
		defenseThree.alpha = 0;
		defenseFour.alpha = 0;
		fillOne.alpha = 0;
		fillTwo.alpha = 0;
		fillThree.alpha = 0;
		fillFour.alpha = 0;
		
		fillOneF.hidden = YES;
		fillTwoF.hidden = YES;
		fillThreeF.hidden = YES;
		fillFourF.hidden = YES;
		
		checkB.hidden = YES;
		xB.hidden = YES;
		
		dotCirc.hidden = YES;
		
		tabOne.alpha = 0;
		tabTwo.alpha = 0;
		tabThree.alpha = 0;
		tabFour.alpha = 0;
		
		selectText.alpha = 0;
		resourceOne.alpha = 0;
		researchOne.alpha = 0;
		manuOne.alpha = 0;
		defenseOne.alpha = 0;
		
		box.alpha = 0;
		
		fillerHolder.alpha = 0;
		whiteLine.alpha = 0;
		
		infoLabel.alpha = 0;
		
		[UIView commitAnimations];
		
	}

}

- (IBAction)moreTouch:(id)sender{
	mored = YES;

	
	if (resourceKeeper == 0)
	{
		fillOne.userInteractionEnabled = YES;
		fillTwo.userInteractionEnabled = NO;
		fillThree.userInteractionEnabled = NO;
		fillFour.userInteractionEnabled = NO;
		
		fillOneF.hidden = YES;
		fillTwoF.hidden = YES;
		fillThreeF.hidden = YES;
		fillFourF.hidden = YES;
	} else if (resourceKeeper == 1)
	{
		fillOne.userInteractionEnabled = NO;
		fillTwo.userInteractionEnabled = YES;
		fillThree.userInteractionEnabled = NO;
		fillFour.userInteractionEnabled = NO;
		
		fillOneF.hidden = NO;
		fillTwoF.hidden = YES;
		fillThreeF.hidden = YES;
		fillFourF.hidden = YES;
	} else if (resourceKeeper == 2)
	{
		fillOne.userInteractionEnabled = NO;
		fillTwo.userInteractionEnabled = NO;
		fillThree.userInteractionEnabled = YES;
		fillFour.userInteractionEnabled = NO;
		
		fillOneF.hidden = NO;
		fillTwoF.hidden = NO;
		fillThreeF.hidden = YES;
		fillFourF.hidden = YES;
	} else if (resourceKeeper == 3)
	{
		fillOne.userInteractionEnabled = NO;
		fillTwo.userInteractionEnabled = NO;
		fillThree.userInteractionEnabled = NO;
		fillFour.userInteractionEnabled = YES;
		
		fillOneF.hidden = NO;
		fillTwoF.hidden = NO;
		fillThreeF.hidden = NO;
		fillFourF.hidden = YES;
	} else if (resourceKeeper == 4)
	{
		fillOne.userInteractionEnabled = NO;
		fillTwo.userInteractionEnabled = NO;
		fillThree.userInteractionEnabled = NO;
		fillFour.userInteractionEnabled = NO;
		
		fillOneF.hidden = NO;
		fillTwoF.hidden = NO;
		fillThreeF.hidden = NO;
		fillFourF.hidden = NO;
	}
	
	resourceOne.hidden = NO;
	resourceTwo.hidden = NO;
	resourceThree.hidden = NO;
	resourceFour.hidden = NO;
	researchOne.hidden = NO;
	researchTwo.hidden = NO;
	researchThree.hidden = NO;
	researchFour.hidden = NO;
	manuOne.hidden = NO;
	manuTwo.hidden = NO;
	manuThree.hidden = NO;
	manuFour.hidden = NO;
	defenseOne.hidden = NO;
	defenseTwo.hidden = NO;
	defenseThree.hidden = NO;
	defenseFour.hidden = NO;
	
	
	fillOne.hidden = NO;
	fillTwo.hidden = NO;
	fillThree.hidden = NO;
	fillFour.hidden = NO;
	
	tabOne.hidden = NO;
	tabTwo.hidden = NO;
	tabThree.hidden = NO;
	tabFour.hidden = NO;
	
	box.hidden = NO;
	
	fillerHolder.hidden = NO;
	whiteLine.hidden = NO;
	
	dotCirc.hidden = NO;
	 
	/* 
	fillOneF.hidden = NO;
	fillTwoF.hidden = NO;
	fillThreeF.hidden = NO;
	fillFourF.hidden = NO;
	*/ 
	
	resourceOne.alpha = 0;
	resourceTwo.alpha = 0;
	resourceThree.alpha = 0;
	resourceFour.alpha = 0;
	researchOne.alpha = 0;
	researchTwo.alpha = 0;
	researchThree.alpha = 0;
	researchFour.alpha = 0;
	manuOne.alpha = 0;
	manuTwo.alpha = 0;
	manuThree.alpha = 0;
	manuFour.alpha = 0;
	defenseOne.alpha = 0;
	defenseTwo.alpha = 0;
	defenseThree.alpha = 0;
	defenseFour.alpha = 0;
	
	fillOne.alpha = 0;
	fillTwo.alpha = 0;
	fillThree.alpha = 0;
	fillFour.alpha = 0;
	
	/*
	fillOneF.alpha = 0;
	fillTwoF.alpha = 0;
	fillThreeF.alpha = 0;
	fillFourF.alpha = 0;
	*/
	
	tabOne.alpha = 0;
	tabTwo.alpha = 0;
	tabThree.alpha = 0;
	tabFour.alpha = 0;
	
	 
	box.alpha = 0;
	
	fillerHolder.alpha = 0;
	
	whiteLine.alpha = 1;
	
	if (resourceKeeper == 0)
	{
		fillOneF.hidden = YES;
		fillTwoF.hidden = YES;
		fillThreeF.hidden = YES;
		fillFourF.hidden = YES;
	} else if (resourceKeeper == 1)
	{
		fillOneF.hidden = NO;
		fillTwoF.hidden = YES;
		fillThreeF.hidden = YES;
		fillFourF.hidden = YES;
	} else if (resourceKeeper == 2)
	{
		fillOneF.hidden = NO;
		fillTwoF.hidden = NO;
		fillThreeF.hidden = YES;
		fillFourF.hidden = YES;
	} else if (resourceKeeper == 3)
	{
		fillOneF.hidden = NO;
		fillTwoF.hidden = NO;
		fillThreeF.hidden = NO;
		fillFourF.hidden = YES;
	} else if (resourceKeeper == 4)
	{
		fillOneF.hidden = NO;
		fillTwoF.hidden = NO;
		fillThreeF.hidden = NO;
		fillFourF.hidden = NO;
	}
	
	if (whichPlanet == 1)
	{	
		pMoreX = pOneXRand;
		pMoreY = pOneYRand;
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		planetOne.transform = CGAffineTransformMakeTranslation (0, 50);
		pOneB.transform = CGAffineTransformMakeTranslation (0, 50);
		[UIView commitAnimations];
	} else if (whichPlanet == 2)
	{
		pMoreX = pTwoXRand;
		pMoreY = pTwoYRand;
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		planetTwo.transform = CGAffineTransformMakeTranslation (0, 50);
		pTwoB.transform = CGAffineTransformMakeTranslation (0, 50);
		[UIView commitAnimations];
	} else if (whichPlanet == 3)
	{
		pMoreX = pThreeXRand;
		pMoreY = pThreeYRand;
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		planetThree.transform = CGAffineTransformMakeTranslation (0, 50);
		pThreeB.transform = CGAffineTransformMakeTranslation (0, 50);
		[UIView commitAnimations];
	} else if (whichPlanet == 4)
	{
		pMoreX = pFourXRand;
		pMoreY = pFourYRand;
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		planetFour.transform = CGAffineTransformMakeTranslation (0, 50);
		pFourB.transform = CGAffineTransformMakeTranslation (0, 50);
		[UIView commitAnimations];
	} else if (whichPlanet == 5)
	{
		pMoreX = pFiveXRand;
		pMoreY = pFiveYRand;
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		planetFive.transform = CGAffineTransformMakeTranslation (0, 50);
		pFiveB.transform = CGAffineTransformMakeTranslation (0, 50);
		[UIView commitAnimations];
	} else if (whichPlanet == 6)
	{
		pMoreX = pSixXRand;
		pMoreY = pSixYRand;
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		planetSix.transform = CGAffineTransformMakeTranslation (0, 50);
		pSixB.transform = CGAffineTransformMakeTranslation (0, 50);
		[UIView commitAnimations];
	} else if (whichPlanet == 7)
	{
		pMoreX = pSevenXRand;
		pMoreY = pSevenYRand;
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		planetSeven.transform = CGAffineTransformMakeTranslation (0, 50);
		pSevenB.transform = CGAffineTransformMakeTranslation (0, 50);
		[UIView commitAnimations];
	} else if (whichPlanet == 8)
	{
		pMoreX = pEightXRand;
		pMoreY = pEightYRand;
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		planetEight.transform = CGAffineTransformMakeTranslation (0, 50);
		pEightB.transform = CGAffineTransformMakeTranslation (0, 50);
		[UIView commitAnimations];
	} else if (whichPlanet == 9)
	{
		pMoreX = pNineXRand;
		pMoreY = pNineYRand;
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		planetNine.transform = CGAffineTransformMakeTranslation (0, 50);
		pNineB.transform = CGAffineTransformMakeTranslation (0, 50);
		[UIView commitAnimations];
	} else if (whichPlanet == 10)
	{
		pMoreX = pTenXRand;
		pMoreY = pTenYRand;
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		planetTen.transform = CGAffineTransformMakeTranslation (0, 50);
		pTenB.transform = CGAffineTransformMakeTranslation (0, 50);
		[UIView commitAnimations];
	} else if (whichPlanet == 11)
	{
		pMoreX = pElevenXRand;
		pMoreY = pElevenYRand;
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		planetEleven.transform = CGAffineTransformMakeTranslation (0, 50);
		pElevenB.transform = CGAffineTransformMakeTranslation (0, 50);
		[UIView commitAnimations];
	} else if (whichPlanet == 12)
	{
		pMoreX = pTwelveXRand;
		pMoreY = pTwelveYRand;
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		planetTwelve.transform = CGAffineTransformMakeTranslation (0, 50);
		pTwelveB.transform = CGAffineTransformMakeTranslation (0, 50);
		[UIView commitAnimations];
	} else if (whichPlanet == 13)
	{
		pMoreX = pThirteenXRand;
		pMoreY = pThirteenYRand;
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		planetThirteen.transform = CGAffineTransformMakeTranslation (0, 50);
		pThirteenB.transform = CGAffineTransformMakeTranslation (0, 50);
		[UIView commitAnimations];
	} else if (whichPlanet == 14)
	{
		pMoreX = pFourteenXRand;
		pMoreY = pFourteenYRand;
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		planetFourteen.transform = CGAffineTransformMakeTranslation (0, 50);
		pFourteenB.transform = CGAffineTransformMakeTranslation (0, 50);
		[UIView commitAnimations];
	} else if (whichPlanet == 15)
	{
		pMoreX = pFifteenXRand;
		pMoreY = pFifteenYRand;
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		planetFifteen.transform = CGAffineTransformMakeTranslation (0, 50);
		pFifteenB.transform = CGAffineTransformMakeTranslation (0, 50);
		[UIView commitAnimations];
	}
	
	
	[tabOne setCenter:CGPointMake(pMoreX - 93, pMoreY - 122)];
	[tabTwo setCenter:CGPointMake(pMoreX - 31, pMoreY - 122)];
	[tabThree setCenter:CGPointMake(pMoreX + 31, pMoreY - 122)];
	[tabFour setCenter:CGPointMake(pMoreX + 93, pMoreY - 122)];
	
	
	
	[resourceOne setCenter:CGPointMake(pMoreX - 95 , pMoreY - 130)];
	[researchOne setCenter:CGPointMake(pMoreX - 30, pMoreY - 130)];
	[manuOne setCenter:CGPointMake(pMoreX + 30 , pMoreY - 130)];
	[defenseOne setCenter:CGPointMake(pMoreX + 95 , pMoreY - 130)];
	
	 
	[fillOne setCenter:CGPointMake(pMoreX - 60, pMoreY - 47)];
	[fillTwo setCenter:CGPointMake(pMoreX - 20, pMoreY - 47)];	
	[fillThree setCenter:CGPointMake(pMoreX + 20, pMoreY - 47)];	
	[fillFour setCenter:CGPointMake(pMoreX + 60, pMoreY - 47)];
	
	[fillOneF setCenter:CGPointMake(pMoreX - 60, pMoreY - 47)];	
	[fillTwoF setCenter:CGPointMake(pMoreX - 20, pMoreY - 47)];
	[fillThreeF setCenter:CGPointMake(pMoreX + 20, pMoreY - 47)];
	[fillFourF setCenter:CGPointMake(pMoreX + 60, pMoreY - 47)];
	
	[selectText setCenter:CGPointMake(pMoreX - 100, pMoreY - 20)];
	
	[box setCenter:CGPointMake(pMoreX, pMoreY - 78)];
	
	[whiteLine setCenter:CGPointMake(pMoreX - 93, pMoreY - 116)];
	
	[fillerHolder setCenter:CGPointMake(pMoreX, pMoreY - 50)];
	
	//[bigLabel setCenter:CGPointMake(pMoreX, pMoreY - 70)];
	[infoLabel setCenter:CGPointMake(pMoreX, pMoreY - 85)];
	
	infoLabel.text = [NSString stringWithFormat:@"resources: upgrade to earn more money per turn"];
	
	
	//[dotCirc setCenter:CGPointMake(pMoreX, pMoreY + 50)];
	
	
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:.5];
	
	dotCirc.transform = CGAffineTransformMakeTranslation(0, 0);
	
	
	pearl.alpha = 0;	
	more.alpha = 0;
	move.alpha = 0;
		
	resourceOne.alpha = 1;
	researchOne.alpha = .4;
	manuOne.alpha = .4;
	defenseOne.alpha = .4;
	
	fillOne.alpha = 1;
	fillTwo.alpha = 1;
	fillThree.alpha = 1;
	fillFour.alpha = 1;
	
	/*
	fillOneF.alpha = 1;
	fillTwoF.alpha = 1;
	fillThreeF.alpha = 1;
	fillFourF.alpha = 1;
	*/
	
	tabOne.alpha = 1;
	tabTwo.alpha = 1;
	tabThree.alpha = 1;
	tabFour.alpha = 1;
	
	
	infoLabel.alpha = 1;
	
	//take this next line out when done testing
	selectText.hidden = YES;
	
	box.alpha = 1;
	
	fillerHolder.alpha = 1;
	
	cancel.transform = CGAffineTransformMakeTranslation(0, 125);
	
	[UIView commitAnimations];

}

- (IBAction)moveTouch:(id)sender{
	if (whichPlanet == 1){
		pZoomOutX = pOneXRand;
		pZoomOutY = pOneYRand;
	} else if (whichPlanet == 2){
		pZoomOutX = pTwoXRand;
		pZoomOutY = pTwoYRand;
	} else if (whichPlanet == 3){
		pZoomOutX = pThreeXRand;
		pZoomOutY = pThreeYRand;
	} else if (whichPlanet == 4){
		pZoomOutX = pFourXRand;
		pZoomOutY = pFourYRand;
	} else if (whichPlanet == 5){
		pZoomOutX = pFiveXRand;
		pZoomOutY = pFiveYRand;
	} else if (whichPlanet == 6){
		pZoomOutX = pSixXRand;
		pZoomOutY = pSixYRand;
	} else if (whichPlanet == 7){
		pZoomOutX = pSevenXRand;
		pZoomOutY = pSevenYRand;
	} else if (whichPlanet == 8){
		pZoomOutX = pEightXRand;
		pZoomOutY = pEightYRand;
	} else if (whichPlanet == 9){
		pZoomOutX = pNineXRand;
		pZoomOutY = pNineYRand;
	} else if (whichPlanet == 10){
		pZoomOutX = pTenXRand;
		pZoomOutY = pTenYRand;
	} else if (whichPlanet == 11){
		pZoomOutX = pElevenXRand;
		pZoomOutY = pElevenYRand;
	} else if (whichPlanet == 12){
		pZoomOutX = pTwelveXRand;
		pZoomOutY = pTwelveYRand;
	} else if (whichPlanet == 13){
		pZoomOutX = pThirteenXRand;
		pZoomOutY = pThirteenYRand;
	} else if (whichPlanet == 14){
		pZoomOutX = pFourteenXRand;
		pZoomOutY = pFourteenYRand;
	} else if (whichPlanet == 15){
		pZoomOutX = pFifteenXRand;
		pZoomOutY = pFifteenYRand;
	}
    
	[self performSelector:@selector(drawRect)];
	
    //adding circle
   
	/*
    CGContextSetRGBStrokeColor(distanceCirc, 0.0, 0.0, 1.0, 1.0);
	CGContextSetLineWidth(distanceCirc, 50.0);
    
    //CGContextBeginPath(distanceCirc);
    CGContextAddArc(distanceCirc, pZoomOutX, pZoomOutY, 300.0, 0, 2 * M_PI, 1);
   // CGContextClosePath(distanceCirc);
    
    CGContextStrokePath(distanceCirc);
	 */
//------
    
    
    //zooming out
    
	CGRect zoomRect = CGRectMake(pZoomOutX - 320, pZoomOutY - 480, 640, 920);
	[scroller zoomToRect:zoomRect  animated:YES];
//--------
    
    
	[scroller setScrollEnabled:YES];
	
	pearl.hidden = YES;
	more.hidden = YES;
	move.hidden = YES;
	
	/*
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:.5];
	pearl.alpha = 0;
	more.alpha = 0;
	move.alpha = 0;
	[UIView commitAnimations];
	*/
}

- (IBAction)pOneBTouch:(id)sender{
	[scroller setScrollEnabled:NO];
	[pOneB setUserInteractionEnabled:NO];
	
	usingPlanet = YES;

	CGRect zoomRect = CGRectMake(pOneXRand - 125, pOneYRand - 125, 250, 250);
	[scroller zoomToRect:zoomRect  animated:YES];
	
	whichPlanet = 1;
	if (planetSelected == NO){
		planetSelected = YES;
	pearl.hidden = NO;
	more.hidden = NO;
	move.hidden = NO;
	cancel.hidden = NO;
	//blur.hidden = NO;
	
	[pearl		setCenter:CGPointMake	(pOneXRand,		pOneYRand)];
	[more		setCenter:CGPointMake	(pOneXRand,		pOneYRand)];
	[move		setCenter:CGPointMake	(pOneXRand,		pOneYRand)];
	[cancel		setCenter:CGPointMake	(pOneXRand,		pOneYRand)];
	[blur		setCenter:CGPointMake   (pOneXRand,		pOneYRand)];
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:.5];
	pearl.transform = CGAffineTransformMakeTranslation(0 , -100);
	more.transform = CGAffineTransformMakeTranslation(50 , 80);
	move.transform = CGAffineTransformMakeTranslation(-50 , 80);
	cancel.transform = CGAffineTransformMakeTranslation(0 , 100);
	[UIView commitAnimations];
	} else if (planetSelected == YES){
	
		pearl.transform = CGAffineTransformIdentity;
		more.transform = CGAffineTransformIdentity;
		move.transform = CGAffineTransformIdentity;
		cancel.transform = CGAffineTransformIdentity;
		
		[pearl		setCenter:CGPointMake	(pOneXRand,		pOneYRand)];
		[more		setCenter:CGPointMake	(pOneXRand,		pOneYRand)];
		[move		setCenter:CGPointMake	(pOneXRand,		pOneYRand)];
		[cancel		setCenter:CGPointMake	(pOneXRand,		pOneYRand)];
		[blur		setCenter:CGPointMake   (pOneXRand,		pOneYRand)];
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		
		pearl.transform = CGAffineTransformMakeTranslation(0 , -100);
		more.transform = CGAffineTransformMakeTranslation(50 , 80);
		move.transform = CGAffineTransformMakeTranslation(-50 , 80);
		cancel.transform = CGAffineTransformMakeTranslation(0 , 100);
		[UIView commitAnimations];
		
		//float newScale = [scroller zoomScale] * 2;
		//CGRect zoomRect = [self zoomRectForScale:newScale withCenter:(pOneXRand , pOneYRand)];
		

	}
}

- (IBAction)pTwoBTouch:(id)sender{
	[scroller setScrollEnabled:NO];
	[pTwoB setUserInteractionEnabled:NO];
	
	usingPlanet = YES;
	
	whichPlanet = 2;
	CGRect zoomRect = CGRectMake(pTwoXRand - 125, pTwoYRand - 125, 250, 250);
	[scroller zoomToRect:zoomRect  animated:YES];
	
	//use planet seleceted so that when a user touches (until zoom functions are fixed) the animations for buttons happen
	if (planetSelected == NO){
		planetSelected = YES;
		pearl.hidden = NO;
		more.hidden = NO;
		move.hidden = NO;
		cancel.hidden = NO;
		
		[pearl		setCenter:CGPointMake	(pTwoXRand,		pTwoYRand)];
		[more		setCenter:CGPointMake	(pTwoXRand,		pTwoYRand)];
		[move		setCenter:CGPointMake	(pTwoXRand,		pTwoYRand)];
		[cancel		setCenter:CGPointMake	(pTwoXRand,		pTwoYRand)];
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		pearl.transform = CGAffineTransformMakeTranslation(0 , -100);
		more.transform = CGAffineTransformMakeTranslation(50 , 80);
		move.transform = CGAffineTransformMakeTranslation(-50 , 80);
		cancel.transform = CGAffineTransformMakeTranslation(0 , 100);
		[UIView commitAnimations];
	} else if (planetSelected == YES){
		
		pearl.transform = CGAffineTransformIdentity;
		more.transform = CGAffineTransformIdentity;
		move.transform = CGAffineTransformIdentity;
		cancel.transform = CGAffineTransformIdentity;
		
		[pearl		setCenter:CGPointMake	(pTwoXRand,		pTwoYRand)];
		[more		setCenter:CGPointMake	(pTwoXRand,		pTwoYRand)];
		[move		setCenter:CGPointMake	(pTwoXRand,		pTwoYRand)];
		[cancel		setCenter:CGPointMake	(pTwoXRand,		pTwoYRand)];
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		
		pearl.transform = CGAffineTransformMakeTranslation(0 , -100);
		more.transform = CGAffineTransformMakeTranslation(50 , 80);
		move.transform = CGAffineTransformMakeTranslation(-50 , 80);
		cancel.transform = CGAffineTransformMakeTranslation(0 , 100);
		[UIView commitAnimations];
	}
}

- (IBAction)pThreeBTouch:(id)sender{
	[scroller setScrollEnabled:NO];
	[pThreeB setUserInteractionEnabled:NO];
	
	
	usingPlanet = YES;
	
	//float newScale = [scroller zoomScale] * 2;
	//CGRect zoomRect = [self zoomRectForScale:newScale withCenter:CGPointMake(pThreeXRand, pThreeYRand)];
	CGRect zoomRect = CGRectMake(pThreeXRand - 125, pThreeYRand -125, 250, 250);
	[scroller zoomToRect:zoomRect animated:YES];
	
	whichPlanet = 3;

	//use planet seleceted so that when a user touches (until zoom functions are fixed) the animations for buttons happen
	if (planetSelected == NO){
		planetSelected = YES;
		pearl.hidden = NO;
		more.hidden = NO;
		move.hidden = NO;
		cancel.hidden = NO;
		
		[pearl		setCenter:CGPointMake	(pThreeXRand,		pThreeYRand)];
		[more		setCenter:CGPointMake	(pThreeXRand,		pThreeYRand)];
		[move		setCenter:CGPointMake	(pThreeXRand,		pThreeYRand)];
		[cancel		setCenter:CGPointMake	(pThreeXRand,		pThreeYRand)];
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		pearl.transform = CGAffineTransformMakeTranslation(0 , -100);
		more.transform = CGAffineTransformMakeTranslation(50 , 80);
		move.transform = CGAffineTransformMakeTranslation(-50 , 80);
		cancel.transform = CGAffineTransformMakeTranslation(0 , 100);
		[UIView commitAnimations];
	} else if (planetSelected == YES){
		
		pearl.transform = CGAffineTransformIdentity;
		more.transform = CGAffineTransformIdentity;
		move.transform = CGAffineTransformIdentity;
		cancel.transform = CGAffineTransformIdentity;
		
		[pearl		setCenter:CGPointMake	(pThreeXRand,		pThreeYRand)];
		[more		setCenter:CGPointMake	(pThreeXRand,		pThreeYRand)];
		[move		setCenter:CGPointMake	(pThreeXRand,		pThreeYRand)];
		[cancel		setCenter:CGPointMake	(pThreeXRand,		pThreeYRand)];
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		
		pearl.transform = CGAffineTransformMakeTranslation(0 , -100);
		more.transform = CGAffineTransformMakeTranslation(50 , 80);
		move.transform = CGAffineTransformMakeTranslation(-50 , 80);
		cancel.transform = CGAffineTransformMakeTranslation(0 , 100);
		[UIView commitAnimations];
	
	}
}

- (IBAction)pFourBTouch:(id)sender{
	[scroller setScrollEnabled:NO];
	[pFourB setUserInteractionEnabled:NO];
	
	usingPlanet = YES;
	
	CGRect zoomRect = CGRectMake(pFourXRand - 125, pFourYRand - 125, 250, 250);
	[scroller zoomToRect:zoomRect  animated:YES];
	whichPlanet = 4;

	//use planet seleceted so that when a user touches (until zoom functions are fixed) the animations for buttons happen
	if (planetSelected == NO){
		planetSelected = YES;
		pearl.hidden = NO;
		more.hidden = NO;
		move.hidden = NO;
		cancel.hidden = NO;
		
		[pearl		setCenter:CGPointMake	(pFourXRand,		pFourYRand)];
		[more		setCenter:CGPointMake	(pFourXRand,		pFourYRand)];
		[move		setCenter:CGPointMake	(pFourXRand,		pFourYRand)];
		[cancel		setCenter:CGPointMake	(pFourXRand,		pFourYRand)];
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		pearl.transform = CGAffineTransformMakeTranslation(0 , -100);
		more.transform = CGAffineTransformMakeTranslation(50 , 80);
		move.transform = CGAffineTransformMakeTranslation(-50 , 80);
		cancel.transform = CGAffineTransformMakeTranslation(0 , 100);
		[UIView commitAnimations];
	} else if (planetSelected == YES){
		
		pearl.transform = CGAffineTransformIdentity;
		more.transform = CGAffineTransformIdentity;
		move.transform = CGAffineTransformIdentity;
		cancel.transform = CGAffineTransformIdentity;
		
		[pearl		setCenter:CGPointMake	(pFourXRand,		pFourYRand)];
		[more		setCenter:CGPointMake	(pFourXRand,		pFourYRand)];
		[move		setCenter:CGPointMake	(pFourXRand,		pFourYRand)];
		[cancel		setCenter:CGPointMake	(pFourXRand,		pFourYRand)];
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		
		pearl.transform = CGAffineTransformMakeTranslation(0 , -100);
		more.transform = CGAffineTransformMakeTranslation(50 , 80);
		move.transform = CGAffineTransformMakeTranslation(-50 , 80);
		cancel.transform = CGAffineTransformMakeTranslation(0 , 100);
		[UIView commitAnimations];
	}
}

- (IBAction)pFiveBTouch:(id)sender{
	[scroller setScrollEnabled:NO];
	[pFiveB setUserInteractionEnabled:NO];
	
	usingPlanet = YES;
	
	CGRect zoomRect = CGRectMake(pFiveXRand - 125, pFiveYRand - 125, 250, 250);
	[scroller zoomToRect:zoomRect  animated:YES];
	whichPlanet = 5;

	//use planet seleceted so that when a user touches (until zoom functions are fixed) the animations for buttons happen
	if (planetSelected == NO){
		planetSelected = YES;
		pearl.hidden = NO;
		more.hidden = NO;
		move.hidden = NO;
		cancel.hidden = NO;
		
		[pearl		setCenter:CGPointMake	(pFiveXRand,		pFiveYRand)];
		[more		setCenter:CGPointMake	(pFiveXRand,		pFiveYRand)];
		[move		setCenter:CGPointMake	(pFiveXRand,		pFiveYRand)];
		[cancel		setCenter:CGPointMake	(pFiveXRand,		pFiveYRand)];
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		pearl.transform = CGAffineTransformMakeTranslation(0 , -100);
		more.transform = CGAffineTransformMakeTranslation(50 , 80);
		move.transform = CGAffineTransformMakeTranslation(-50 , 80);
		cancel.transform = CGAffineTransformMakeTranslation(0 , 100);
		[UIView commitAnimations];
	} else if (planetSelected == YES){
		
		pearl.transform = CGAffineTransformIdentity;
		more.transform = CGAffineTransformIdentity;
		move.transform = CGAffineTransformIdentity;
		cancel.transform = CGAffineTransformIdentity;
		
		[pearl		setCenter:CGPointMake	(pFiveXRand,		pFiveYRand)];
		[more		setCenter:CGPointMake	(pFiveXRand,		pFiveYRand)];
		[move		setCenter:CGPointMake	(pFiveXRand,		pFiveYRand)];
		[cancel		setCenter:CGPointMake	(pFiveXRand,		pFiveYRand)];
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		
		pearl.transform = CGAffineTransformMakeTranslation(0 , -100);
		more.transform = CGAffineTransformMakeTranslation(50 , 80);
		move.transform = CGAffineTransformMakeTranslation(-50 , 80);
		cancel.transform = CGAffineTransformMakeTranslation(0 , 100);
		[UIView commitAnimations];
	}
}

- (IBAction)pSixBTouch:(id)sender{
	[scroller setScrollEnabled:NO];
	[pSixB setUserInteractionEnabled:NO];
	
	usingPlanet = YES;
	
	CGRect zoomRect = CGRectMake(pSixXRand - 125, pSixYRand - 125, 250, 250);
	[scroller zoomToRect:zoomRect  animated:YES];
	whichPlanet = 6;

	//use planet seleceted so that when a user touches (until zoom functions are fixed) the animations for buttons happen
	if (planetSelected == NO){
		planetSelected = YES;
		pearl.hidden = NO;
		more.hidden = NO;
		move.hidden = NO;
		cancel.hidden = NO;
		
		[pearl		setCenter:CGPointMake	(pSixXRand,		pSixYRand)];
		[more		setCenter:CGPointMake	(pSixXRand,		pSixYRand)];
		[move		setCenter:CGPointMake	(pSixXRand,		pSixYRand)];
		[cancel		setCenter:CGPointMake	(pSixXRand,		pSixYRand)];
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		pearl.transform = CGAffineTransformMakeTranslation(0 , -100);
		more.transform = CGAffineTransformMakeTranslation(50 , 80);
		move.transform = CGAffineTransformMakeTranslation(-50 , 80);
		cancel.transform = CGAffineTransformMakeTranslation(0 , 100);
		[UIView commitAnimations];
	} else if (planetSelected == YES){
		
		pearl.transform = CGAffineTransformIdentity;
		more.transform = CGAffineTransformIdentity;
		move.transform = CGAffineTransformIdentity;
		cancel.transform = CGAffineTransformIdentity;
		
		[pearl		setCenter:CGPointMake	(pSixXRand,		pSixYRand)];
		[more		setCenter:CGPointMake	(pSixXRand,		pSixYRand)];
		[move		setCenter:CGPointMake	(pSixXRand,		pSixYRand)];
		[cancel		setCenter:CGPointMake	(pSixXRand,		pSixYRand)];
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		
		pearl.transform = CGAffineTransformMakeTranslation(0 , -100);
		more.transform = CGAffineTransformMakeTranslation(50 , 80);
		move.transform = CGAffineTransformMakeTranslation(-50 , 80);
		cancel.transform = CGAffineTransformMakeTranslation(0 , 100);
		[UIView commitAnimations];
	}
}

- (IBAction)pSevenBTouch:(id)sender{
	[scroller setScrollEnabled:NO];
	[pSevenB setUserInteractionEnabled:NO];
	
	usingPlanet = YES;
	
	CGRect zoomRect = CGRectMake(pSevenXRand - 125, pSevenYRand - 125, 250, 250);
	[scroller zoomToRect:zoomRect  animated:YES];
	whichPlanet = 7;

	//use planet seleceted so that when a user touches (until zoom functions are fixed) the animations for buttons happen
	if (planetSelected == NO){
		planetSelected = YES;
		pearl.hidden = NO;
		more.hidden = NO;
		move.hidden = NO;
		cancel.hidden = NO;
		
		[pearl		setCenter:CGPointMake	(pSevenXRand,		pSevenYRand)];
		[more		setCenter:CGPointMake	(pSevenXRand,		pSevenYRand)];
		[move		setCenter:CGPointMake	(pSevenXRand,		pSevenYRand)];
		[cancel		setCenter:CGPointMake	(pSevenXRand,		pSevenYRand)];
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		pearl.transform = CGAffineTransformMakeTranslation(0 , -100);
		more.transform = CGAffineTransformMakeTranslation(50 , 80);
		move.transform = CGAffineTransformMakeTranslation(-50 , 80);
		cancel.transform = CGAffineTransformMakeTranslation(0 , 100);
		[UIView commitAnimations];
	} else if (planetSelected == YES){
		
		pearl.transform = CGAffineTransformIdentity;
		more.transform = CGAffineTransformIdentity;
		move.transform = CGAffineTransformIdentity;
		cancel.transform = CGAffineTransformIdentity;
		
		[pearl		setCenter:CGPointMake	(pSevenXRand,		pSevenYRand)];
		[more		setCenter:CGPointMake	(pSevenXRand,		pSevenYRand)];
		[move		setCenter:CGPointMake	(pSevenXRand,		pSevenYRand)];
		[cancel		setCenter:CGPointMake	(pSevenXRand,		pSevenYRand)];
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		
		pearl.transform = CGAffineTransformMakeTranslation(0 , -100);
		more.transform = CGAffineTransformMakeTranslation(50 , 80);
		move.transform = CGAffineTransformMakeTranslation(-50 , 80);
		cancel.transform = CGAffineTransformMakeTranslation(0 , 100);
		[UIView commitAnimations];
	}
}

- (IBAction)pEightBTouch:(id)sender{
	[scroller setScrollEnabled:NO];
	[pEightB setUserInteractionEnabled:NO];
	
	usingPlanet = YES;
	
	CGRect zoomRect = CGRectMake(pEightXRand - 125, pEightYRand - 125, 250, 250);
	[scroller zoomToRect:zoomRect  animated:YES];
	whichPlanet = 8;

	//use planet seleceted so that when a user touches (until zoom functions are fixed) the animations for buttons happen
	if (planetSelected == NO){
		planetSelected = YES;
		pearl.hidden = NO;
		more.hidden = NO;
		move.hidden = NO;
		cancel.hidden = NO;
		
		[pearl		setCenter:CGPointMake	(pEightXRand,		pEightYRand)];
		[more		setCenter:CGPointMake	(pEightXRand,		pEightYRand)];
		[move		setCenter:CGPointMake	(pEightXRand,		pEightYRand)];
		[cancel		setCenter:CGPointMake	(pEightXRand,		pEightYRand)];
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		pearl.transform = CGAffineTransformMakeTranslation(0 , -100);
		more.transform = CGAffineTransformMakeTranslation(50 , 80);
		move.transform = CGAffineTransformMakeTranslation(-50 , 80);
		cancel.transform = CGAffineTransformMakeTranslation(0 , 100);
		[UIView commitAnimations];
	} else if (planetSelected == YES){
		
		pearl.transform = CGAffineTransformIdentity;
		more.transform = CGAffineTransformIdentity;
		move.transform = CGAffineTransformIdentity;
		cancel.transform = CGAffineTransformIdentity;
		
		[pearl		setCenter:CGPointMake	(pEightXRand,		pEightYRand)];
		[more		setCenter:CGPointMake	(pEightXRand,		pEightYRand)];
		[move		setCenter:CGPointMake	(pEightXRand,		pEightYRand)];
		[cancel		setCenter:CGPointMake	(pEightXRand,		pEightYRand)];
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		
		pearl.transform = CGAffineTransformMakeTranslation(0 , -100);
		more.transform = CGAffineTransformMakeTranslation(50 , 80);
		move.transform = CGAffineTransformMakeTranslation(-50 , 80);
		cancel.transform = CGAffineTransformMakeTranslation(0 , 100);
		[UIView commitAnimations];
	}
}

- (IBAction)pNineBTouch:(id)sender{
	[scroller setScrollEnabled:NO];
	[pNineB setUserInteractionEnabled:NO];
	
	usingPlanet = YES;
	
	CGRect zoomRect = CGRectMake(pNineXRand - 125, pNineYRand - 125, 250, 250);
	[scroller zoomToRect:zoomRect  animated:YES];
	whichPlanet = 9;

	//use planet seleceted so that when a user touches (until zoom functions are fixed) the animations for buttons happen
	if (planetSelected == NO){
		planetSelected = YES;
		pearl.hidden = NO;
		more.hidden = NO;
		move.hidden = NO;
		cancel.hidden = NO;
		
		[pearl		setCenter:CGPointMake	(pNineXRand,		pNineYRand)];
		[more		setCenter:CGPointMake	(pNineXRand,		pNineYRand)];
		[move		setCenter:CGPointMake	(pNineXRand,		pNineYRand)];
		[cancel		setCenter:CGPointMake	(pNineXRand,		pNineYRand)];
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		pearl.transform = CGAffineTransformMakeTranslation(0 , -100);
		more.transform = CGAffineTransformMakeTranslation(50 , 80);
		move.transform = CGAffineTransformMakeTranslation(-50 , 80);
		cancel.transform = CGAffineTransformMakeTranslation(0 , 100);
		[UIView commitAnimations];
	} else if (planetSelected == YES){
		
		pearl.transform = CGAffineTransformIdentity;
		more.transform = CGAffineTransformIdentity;
		move.transform = CGAffineTransformIdentity;
		cancel.transform = CGAffineTransformIdentity;
		
		[pearl		setCenter:CGPointMake	(pNineXRand,		pNineYRand)];
		[more		setCenter:CGPointMake	(pNineXRand,		pNineYRand)];
		[move		setCenter:CGPointMake	(pNineXRand,		pNineYRand)];
		[cancel		setCenter:CGPointMake	(pNineXRand,		pNineYRand)];
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		
		pearl.transform = CGAffineTransformMakeTranslation(0 , -100);
		more.transform = CGAffineTransformMakeTranslation(50 , 80);
		move.transform = CGAffineTransformMakeTranslation(-50 , 80);
		cancel.transform = CGAffineTransformMakeTranslation(0 , 100);
		[UIView commitAnimations];
	}
}

- (IBAction)pTenBTouch:(id)sender{
	[scroller setScrollEnabled:NO];
	[pTenB setUserInteractionEnabled:NO];
	
	usingPlanet = YES;
	
	CGRect zoomRect = CGRectMake(pTenXRand - 125, pTenYRand - 125, 250, 250);
	[scroller zoomToRect:zoomRect  animated:YES];
	whichPlanet = 10;

	//use planet seleceted so that when a user touches (until zoom functions are fixed) the animations for buttons happen
	if (planetSelected == NO){
		planetSelected = YES;
		pearl.hidden = NO;
		more.hidden = NO;
		move.hidden = NO;
		cancel.hidden = NO;
		
		[pearl		setCenter:CGPointMake	(pTenXRand,		pTenYRand)];
		[more		setCenter:CGPointMake	(pTenXRand,		pTenYRand)];
		[move		setCenter:CGPointMake	(pTenXRand,		pTenYRand)];
		[cancel		setCenter:CGPointMake	(pTenXRand,		pTenYRand)];
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		pearl.transform = CGAffineTransformMakeTranslation(0 , -100);
		more.transform = CGAffineTransformMakeTranslation(50 , 80);
		move.transform = CGAffineTransformMakeTranslation(-50 , 80);
		cancel.transform = CGAffineTransformMakeTranslation(0 , 100);
		[UIView commitAnimations];
	} else if (planetSelected == YES){
		
		pearl.transform = CGAffineTransformIdentity;
		more.transform = CGAffineTransformIdentity;
		move.transform = CGAffineTransformIdentity;
		cancel.transform = CGAffineTransformIdentity;
		
		[pearl		setCenter:CGPointMake	(pTenXRand,		pTenYRand)];
		[more		setCenter:CGPointMake	(pTenXRand,		pTenYRand)];
		[move		setCenter:CGPointMake	(pTenXRand,		pTenYRand)];
		[cancel		setCenter:CGPointMake	(pTenXRand,		pTenYRand)];
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		
		pearl.transform = CGAffineTransformMakeTranslation(0 , -100);
		more.transform = CGAffineTransformMakeTranslation(50 , 80);
		move.transform = CGAffineTransformMakeTranslation(-50 , 80);
		cancel.transform = CGAffineTransformMakeTranslation(0 , 100);
		[UIView commitAnimations];
	}

}

- (IBAction)pElevenBTouch:(id)sender{
	[scroller setScrollEnabled:NO];
	[pElevenB setUserInteractionEnabled:NO];
	
	usingPlanet = YES;
	
	CGRect zoomRect = CGRectMake(pElevenXRand - 125, pElevenYRand - 125, 250, 250);
	[scroller zoomToRect:zoomRect  animated:YES];
	whichPlanet = 11;
	
	//use planet seleceted so that when a user touches (until zoom functions are fixed) the animations for buttons happen
	if (planetSelected == NO){
		planetSelected = YES;
		pearl.hidden = NO;
		more.hidden = NO;
		move.hidden = NO;
		cancel.hidden = NO;
		
		[pearl		setCenter:CGPointMake	(pElevenXRand,		pElevenYRand)];
		[more		setCenter:CGPointMake	(pElevenXRand,		pElevenYRand)];
		[move		setCenter:CGPointMake	(pElevenXRand,		pElevenYRand)];
		[cancel		setCenter:CGPointMake	(pElevenXRand,		pElevenYRand)];
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		pearl.transform = CGAffineTransformMakeTranslation(0 , -100);
		more.transform = CGAffineTransformMakeTranslation(50 , 80);
		move.transform = CGAffineTransformMakeTranslation(-50 , 80);
		cancel.transform = CGAffineTransformMakeTranslation(0 , 100);
		[UIView commitAnimations];
	} else if (planetSelected == YES){
		
		pearl.transform = CGAffineTransformIdentity;
		more.transform = CGAffineTransformIdentity;
		move.transform = CGAffineTransformIdentity;
		cancel.transform = CGAffineTransformIdentity;
		
		[pearl		setCenter:CGPointMake	(pElevenXRand,		pElevenYRand)];
		[more		setCenter:CGPointMake	(pElevenXRand,		pElevenYRand)];
		[move		setCenter:CGPointMake	(pElevenXRand,		pElevenYRand)];
		[cancel		setCenter:CGPointMake	(pElevenXRand,		pElevenYRand)];
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		
		pearl.transform = CGAffineTransformMakeTranslation(0 , -100);
		more.transform = CGAffineTransformMakeTranslation(50 , 80);
		move.transform = CGAffineTransformMakeTranslation(-50 , 80);
		cancel.transform = CGAffineTransformMakeTranslation(0 , 100);
		[UIView commitAnimations];
	}
	
}

- (IBAction)pTwelveBTouch:(id)sender{
	[scroller setScrollEnabled:NO];
	[pTwelveB setUserInteractionEnabled:NO];
	
	usingPlanet = YES;
	
	CGRect zoomRect = CGRectMake(pTwelveXRand - 125, pTwelveYRand - 125, 250, 250);
	[scroller zoomToRect:zoomRect  animated:YES];
	whichPlanet = 12;
	
	//use planet seleceted so that when a user touches (until zoom functions are fixed) the animations for buttons happen
	if (planetSelected == NO){
		planetSelected = YES;
		pearl.hidden = NO;
		more.hidden = NO;
		move.hidden = NO;
		cancel.hidden = NO;
		
		[pearl		setCenter:CGPointMake	(pTwelveXRand,		pTwelveYRand)];
		[more		setCenter:CGPointMake	(pTwelveXRand,		pTwelveYRand)];
		[move		setCenter:CGPointMake	(pTwelveXRand,		pTwelveYRand)];
		[cancel		setCenter:CGPointMake	(pTwelveXRand,		pTwelveYRand)];
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		pearl.transform = CGAffineTransformMakeTranslation(0 , -100);
		more.transform = CGAffineTransformMakeTranslation(50 , 80);
		move.transform = CGAffineTransformMakeTranslation(-50 , 80);
		cancel.transform = CGAffineTransformMakeTranslation(0 , 100);
		[UIView commitAnimations];
	} else if (planetSelected == YES){
		
		pearl.transform = CGAffineTransformIdentity;
		more.transform = CGAffineTransformIdentity;
		move.transform = CGAffineTransformIdentity;
		cancel.transform = CGAffineTransformIdentity;
		
		[pearl		setCenter:CGPointMake	(pTwelveXRand,		pTwelveYRand)];
		[more		setCenter:CGPointMake	(pTwelveXRand,		pTwelveYRand)];
		[move		setCenter:CGPointMake	(pTwelveXRand,		pTwelveYRand)];
		[cancel		setCenter:CGPointMake	(pTwelveXRand,		pTwelveYRand)];
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		
		pearl.transform = CGAffineTransformMakeTranslation(0 , -100);
		more.transform = CGAffineTransformMakeTranslation(50 , 80);
		move.transform = CGAffineTransformMakeTranslation(-50 , 80);
		cancel.transform = CGAffineTransformMakeTranslation(0 , 100);
		[UIView commitAnimations];
	}
	
}

- (IBAction)pThirteenBTouch:(id)sender{
	[scroller setScrollEnabled:NO];
	[pThirteenB setUserInteractionEnabled:NO];
	
	usingPlanet = YES;
	
	CGRect zoomRect = CGRectMake(pThirteenXRand - 125, pThirteenYRand - 125, 250, 250);
	[scroller zoomToRect:zoomRect  animated:YES];
	whichPlanet = 13;
	
	//use planet seleceted so that when a user touches (until zoom functions are fixed) the animations for buttons happen
	if (planetSelected == NO){
		planetSelected = YES;
		pearl.hidden = NO;
		more.hidden = NO;
		move.hidden = NO;
		cancel.hidden = NO;
		
		[pearl		setCenter:CGPointMake	(pThirteenXRand,		pThirteenYRand)];
		[more		setCenter:CGPointMake	(pThirteenXRand,		pThirteenYRand)];
		[move		setCenter:CGPointMake	(pThirteenXRand,		pThirteenYRand)];
		[cancel		setCenter:CGPointMake	(pThirteenXRand,		pThirteenYRand)];
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		pearl.transform = CGAffineTransformMakeTranslation(0 , -100);
		more.transform = CGAffineTransformMakeTranslation(50 , 80);
		move.transform = CGAffineTransformMakeTranslation(-50 , 80);
		cancel.transform = CGAffineTransformMakeTranslation(0 , 100);
		[UIView commitAnimations];
	} else if (planetSelected == YES){
		
		pearl.transform = CGAffineTransformIdentity;
		more.transform = CGAffineTransformIdentity;
		move.transform = CGAffineTransformIdentity;
		cancel.transform = CGAffineTransformIdentity;
		
		[pearl		setCenter:CGPointMake	(pThirteenXRand,		pThirteenYRand)];
		[more		setCenter:CGPointMake	(pThirteenXRand,		pThirteenYRand)];
		[move		setCenter:CGPointMake	(pThirteenXRand,		pThirteenYRand)];
		[cancel		setCenter:CGPointMake	(pThirteenXRand,		pThirteenYRand)];
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		
		pearl.transform = CGAffineTransformMakeTranslation(0 , -100);
		more.transform = CGAffineTransformMakeTranslation(50 , 80);
		move.transform = CGAffineTransformMakeTranslation(-50 , 80);
		cancel.transform = CGAffineTransformMakeTranslation(0 , 100);
		[UIView commitAnimations];
	}
	
}

- (IBAction)pFourteenBTouch:(id)sender{
	[scroller setScrollEnabled:NO];
	[pFourteenB setUserInteractionEnabled:NO];
	
	usingPlanet = YES;
	
	CGRect zoomRect = CGRectMake(pFourteenXRand - 125, pFourteenYRand - 125, 250, 250);
	[scroller zoomToRect:zoomRect  animated:YES];
	whichPlanet = 14;
	
	//use planet seleceted so that when a user touches (until zoom functions are fixed) the animations for buttons happen
	if (planetSelected == NO){
		planetSelected = YES;
		pearl.hidden = NO;
		more.hidden = NO;
		move.hidden = NO;
		cancel.hidden = NO;
		
		[pearl		setCenter:CGPointMake	(pFourteenXRand,		pFourteenYRand)];
		[more		setCenter:CGPointMake	(pFourteenXRand,		pFourteenYRand)];
		[move		setCenter:CGPointMake	(pFourteenXRand,		pFourteenYRand)];
		[cancel		setCenter:CGPointMake	(pFourteenXRand,		pFourteenYRand)];
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		pearl.transform = CGAffineTransformMakeTranslation(0 , -100);
		more.transform = CGAffineTransformMakeTranslation(50 , 80);
		move.transform = CGAffineTransformMakeTranslation(-50 , 80);
		cancel.transform = CGAffineTransformMakeTranslation(0 , 100);
		[UIView commitAnimations];
	} else if (planetSelected == YES){
		
		pearl.transform = CGAffineTransformIdentity;
		more.transform = CGAffineTransformIdentity;
		move.transform = CGAffineTransformIdentity;
		cancel.transform = CGAffineTransformIdentity;
		
		[pearl		setCenter:CGPointMake	(pFourteenXRand,		pFourteenYRand)];
		[more		setCenter:CGPointMake	(pFourteenXRand,		pFourteenYRand)];
		[move		setCenter:CGPointMake	(pFourteenXRand,		pFourteenYRand)];
		[cancel		setCenter:CGPointMake	(pFourteenXRand,		pFourteenYRand)];
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		
		pearl.transform = CGAffineTransformMakeTranslation(0 , -100);
		more.transform = CGAffineTransformMakeTranslation(50 , 80);
		move.transform = CGAffineTransformMakeTranslation(-50 , 80);
		cancel.transform = CGAffineTransformMakeTranslation(0 , 100);
		[UIView commitAnimations];
	}
	
}

- (IBAction)pFifteenBTouch:(id)sender{
	[scroller setScrollEnabled:NO];
	[pFifteenB setUserInteractionEnabled:NO];
	
	usingPlanet = YES;
	
	CGRect zoomRect = CGRectMake(pFifteenXRand - 125, pFifteenYRand - 125, 250, 250);
	[scroller zoomToRect:zoomRect  animated:YES];
	whichPlanet = 15;
	
	//use planet seleceted so that when a user touches (until zoom functions are fixed) the animations for buttons happen
	if (planetSelected == NO){
		planetSelected = YES;
		pearl.hidden = NO;
		more.hidden = NO;
		move.hidden = NO;
		cancel.hidden = NO;
		
		[pearl		setCenter:CGPointMake	(pFifteenXRand,		pFifteenYRand)];
		[more		setCenter:CGPointMake	(pFifteenXRand,		pFifteenYRand)];
		[move		setCenter:CGPointMake	(pFifteenXRand,		pFifteenYRand)];
		[cancel		setCenter:CGPointMake	(pFifteenXRand,		pFifteenYRand)];
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		pearl.transform = CGAffineTransformMakeTranslation(0 , -100);
		more.transform = CGAffineTransformMakeTranslation(50 , 80);
		move.transform = CGAffineTransformMakeTranslation(-50 , 80);
		cancel.transform = CGAffineTransformMakeTranslation(0 , 100);
		[UIView commitAnimations];
	} else if (planetSelected == YES){
		
		pearl.transform = CGAffineTransformIdentity;
		more.transform = CGAffineTransformIdentity;
		move.transform = CGAffineTransformIdentity;
		cancel.transform = CGAffineTransformIdentity;
		
		[pearl		setCenter:CGPointMake	(pFifteenXRand,		pFifteenYRand)];
		[more		setCenter:CGPointMake	(pFifteenXRand,		pFifteenYRand)];
		[move		setCenter:CGPointMake	(pFifteenXRand,		pFifteenYRand)];
		[cancel		setCenter:CGPointMake	(pFifteenXRand,		pFifteenYRand)];
		[UIView beginAnimations:nil context:NULL];
		[UIView setAnimationDuration:.5];
		
		pearl.transform = CGAffineTransformMakeTranslation(0 , -100);
		more.transform = CGAffineTransformMakeTranslation(50 , 80);
		move.transform = CGAffineTransformMakeTranslation(-50 , 80);
		cancel.transform = CGAffineTransformMakeTranslation(0 , 100);
		[UIView commitAnimations];
	}
	
}

- (void)viewDidLoad {
    [super viewDidLoad];

	//[insideView setContentSize:CGSizeMake(2800, 2800)];
	
	[scroller setScrollEnabled:YES];
	[scroller setContentSize:CGSizeMake(2800, 2800)];
	scroller.maximumZoomScale = 2.0;
	scroller.minimumZoomScale = 0.25;
	scroller.clipsToBounds = YES;
    [scroller setDelegate:self];
	scroller.bounces = YES;
	scroller.showsVerticalScrollIndicator = NO;
	scroller.showsHorizontalScrollIndicator = NO;
	scroller.decelerationRate = UIScrollViewDecelerationRateFast;
	CGRect scrollerRect = CGRectMake(1000, 1000, 1000, 1000);
	[scroller zoomToRect:scrollerRect  animated:NO];
	
	pOneImageRand = (arc4random() % 8) + 1;
	pTwoImageRand = (arc4random() % 8) + 1;
	pThreeImageRand = (arc4random() % 8) + 1;
	pFourImageRand = (arc4random() % 8) + 1;
	pFiveImageRand = (arc4random() % 8) + 1;
	pSixImageRand = (arc4random() % 8) + 1;
	pSevenImageRand = (arc4random() % 8) + 1;
	pEightImageRand = (arc4random() % 8) + 1;
	pNineImageRand = (arc4random() % 8) + 1;
	pTenImageRand = (arc4random() % 8) + 1;
	
	pElevenImageRand = (arc4random() % 4) + 1;
	pTwelveImageRand = (arc4random() % 4) + 1;
	pThirteenImageRand = (arc4random() % 4) + 1;
	pFourteenImageRand = (arc4random() % 4) + 1;
	pFifteenImageRand = (arc4random() % 4) + 1;

	if(pOneImageRand == 1){
		anim1 = [[NSMutableArray alloc] init];
		for (int i=1; i <=26; i++){
			NSString *picname =	[NSString stringWithFormat:@"a%d.png", i];
			UIImage *img = [UIImage imageNamed:picname];
			if (img)[anim1 addObject:img];
			
			[planetOne setAnimationImages:anim1];
			[planetOne setAnimationDuration:1.8f];
			[planetOne startAnimating];
		}
		} else if (pOneImageRand == 2) {
			anim1 = [[NSMutableArray alloc] init];
			for (int i=1; i <=18; i++){
				NSString *picname =	[NSString stringWithFormat:@"b%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim1 addObject:img];
				
				[planetOne setAnimationImages:anim1];
				[planetOne setAnimationDuration:1.8f];
				[planetOne startAnimating];
			}
		} else if (pOneImageRand == 3) {
			anim1 = [[NSMutableArray alloc] init];
			for (int i=1; i <=31; i++){
				NSString *picname =	[NSString stringWithFormat:@"c%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim1 addObject:img];
				
				[planetOne setAnimationImages:anim1];
				[planetOne setAnimationDuration:1.8f];
				[planetOne startAnimating];
			}
		} else if (pOneImageRand == 4) {
			anim1 = [[NSMutableArray alloc] init];
			for (int i=1; i <=29; i++){
				NSString *picname =	[NSString stringWithFormat:@"d%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim1 addObject:img];
				
				[planetOne setAnimationImages:anim1];
				[planetOne setAnimationDuration:1.8f];
				[planetOne startAnimating];
			}
			
		}else if (pOneImageRand == 5) {
			anim1 = [[NSMutableArray alloc] init];
			for (int i=1; i <=24; i++){
				NSString *picname =	[NSString stringWithFormat:@"e%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim1 addObject:img];
				
				[planetOne setAnimationImages:anim1];
				[planetOne setAnimationDuration:1.8f];
				[planetOne startAnimating];
			}
		}else if (pOneImageRand == 6) {
				anim1 = [[NSMutableArray alloc] init];
				for (int i=1; i <=22; i++){
					NSString *picname =	[NSString stringWithFormat:@"f%d.png", i];
					UIImage *img = [UIImage imageNamed:picname];
					if (img)[anim1 addObject:img];
					
					[planetOne setAnimationImages:anim1];
					[planetOne setAnimationDuration:1.8f];
					[planetOne startAnimating];
				}
		}else if (pOneImageRand == 7) {
					anim1 = [[NSMutableArray alloc] init];
					for (int i=1; i <=22; i++){
						NSString *picname =	[NSString stringWithFormat:@"g%d.png", i];
						UIImage *img = [UIImage imageNamed:picname];
						if (img)[anim1 addObject:img];
						
						[planetOne setAnimationImages:anim1];
						[planetOne setAnimationDuration:1.8f];
						[planetOne startAnimating];
					}
		}else if (pOneImageRand == 8) {
						anim1 = [[NSMutableArray alloc] init];
						for (int i=1; i <=20; i++){
							NSString *picname =	[NSString stringWithFormat:@"h%d.png", i];
							UIImage *img = [UIImage imageNamed:picname];
							if (img)[anim1 addObject:img];
							
							[planetOne setAnimationImages:anim1];
							[planetOne setAnimationDuration:1.8f];
							[planetOne startAnimating];
		}
	}
	
	if(pTwoImageRand == 1){
		anim2 = [[NSMutableArray alloc] init];
		for (int i=1; i <=26; i++){
			NSString *picname =	[NSString stringWithFormat:@"a%d.png", i];
			UIImage *img = [UIImage imageNamed:picname];
			if (img)[anim2 addObject:img];
			
			[planetTwo setAnimationImages:anim2];
			[planetTwo setAnimationDuration:1.8f];
			[planetTwo startAnimating];
		}
		} else if (pTwoImageRand == 2) {
			anim2 = [[NSMutableArray alloc] init];
			for (int i=1; i <=18; i++){
				NSString *picname =	[NSString stringWithFormat:@"b%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim2 addObject:img];
				
				[planetTwo setAnimationImages:anim2];
				[planetTwo setAnimationDuration:1.8f];
				[planetTwo startAnimating];
			}
		} else if (pTwoImageRand == 3) {
			anim2 = [[NSMutableArray alloc] init];
			for (int i=1; i <=31; i++){
				NSString *picname =	[NSString stringWithFormat:@"c%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim2 addObject:img];
				
				[planetTwo setAnimationImages:anim2];
				[planetTwo setAnimationDuration:1.8f];
				[planetTwo startAnimating];
			}
		} else if (pTwoImageRand == 4) {
			anim2 = [[NSMutableArray alloc] init];
			for (int i=1; i <=29; i++){
				NSString *picname =	[NSString stringWithFormat:@"d%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim2 addObject:img];
				
				[planetTwo setAnimationImages:anim2];
				[planetTwo setAnimationDuration:1.8f];
				[planetTwo startAnimating];
			}
		}else if (pTwoImageRand == 5) {
			anim2 = [[NSMutableArray alloc] init];
			for (int i=1; i <=24; i++){
				NSString *picname =	[NSString stringWithFormat:@"e%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim2 addObject:img];
				
				[planetTwo setAnimationImages:anim2];
				[planetTwo setAnimationDuration:1.8f];
				[planetTwo startAnimating];
			}
		}else if (pTwoImageRand == 6) {
			anim2 = [[NSMutableArray alloc] init];
			for (int i=1; i <=22; i++){
				NSString *picname =	[NSString stringWithFormat:@"f%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim2 addObject:img];
				
				[planetTwo setAnimationImages:anim2];
				[planetTwo setAnimationDuration:1.8f];
				[planetTwo startAnimating];
			}
		}else if (pTwoImageRand == 7) {
			anim2 = [[NSMutableArray alloc] init];
			for (int i=1; i <=22; i++){
				NSString *picname =	[NSString stringWithFormat:@"g%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim2 addObject:img];
				
				[planetTwo setAnimationImages:anim2];
				[planetTwo setAnimationDuration:1.8f];
				[planetTwo startAnimating];
			}
		}else if (pTwoImageRand == 8) {
			anim2 = [[NSMutableArray alloc] init];
			for (int i=1; i <=20; i++){
				NSString *picname =	[NSString stringWithFormat:@"h%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim2 addObject:img];
				
				[planetTwo setAnimationImages:anim2];
				[planetTwo setAnimationDuration:1.8f];
				[planetTwo startAnimating];
			}
		}
	
	
	if(pThreeImageRand == 1){
		anim3 = [[NSMutableArray alloc] init];
		for (int i=1; i <=26; i++){
			NSString *picname =	[NSString stringWithFormat:@"a%d.png", i];
			UIImage *img = [UIImage imageNamed:picname];
			if (img)[anim3 addObject:img];
			
			[planetThree setAnimationImages:anim3];
			[planetThree setAnimationDuration:1.8f];
			[planetThree startAnimating];
		}
		} else if (pThreeImageRand == 2) {
			anim3 = [[NSMutableArray alloc] init];
			for (int i=1; i <=18; i++){
				NSString *picname =	[NSString stringWithFormat:@"b%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim3 addObject:img];
				
				[planetThree setAnimationImages:anim3];
				[planetThree setAnimationDuration:1.8f];
				[planetThree startAnimating];
			}
		} else if (pThreeImageRand == 3) {
			anim3 = [[NSMutableArray alloc] init];
			for (int i=1; i <=31; i++){
				NSString *picname =	[NSString stringWithFormat:@"c%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim3 addObject:img];
				
				[planetThree setAnimationImages:anim3];
				[planetThree setAnimationDuration:1.8f];
				[planetThree startAnimating];
			}
		} else if (pThreeImageRand == 4) {
			anim3 = [[NSMutableArray alloc] init];
			for (int i=1; i <=29; i++){
				NSString *picname =	[NSString stringWithFormat:@"d%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim3 addObject:img];
				
				[planetThree setAnimationImages:anim3];
				[planetThree setAnimationDuration:1.8f];
				[planetThree startAnimating];
			}
		} else if (pThreeImageRand == 5) {
			anim3 = [[NSMutableArray alloc] init];
			for (int i=1; i <=24; i++){
				NSString *picname =	[NSString stringWithFormat:@"e%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim3 addObject:img];
				
				[planetThree setAnimationImages:anim3];
				[planetThree setAnimationDuration:1.8f];
				[planetThree startAnimating];
			}
		} else if (pThreeImageRand == 6) {
			anim3 = [[NSMutableArray alloc] init];
			for (int i=1; i <=22; i++){
				NSString *picname =	[NSString stringWithFormat:@"f%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim3 addObject:img];
				
				[planetThree setAnimationImages:anim3];
				[planetThree setAnimationDuration:1.8f];
				[planetThree startAnimating];
			}
		} else if (pThreeImageRand == 7) {
			anim3 = [[NSMutableArray alloc] init];
			for (int i=1; i <=22; i++){
				NSString *picname =	[NSString stringWithFormat:@"g%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim3 addObject:img];
				
				[planetThree setAnimationImages:anim3];
				[planetThree setAnimationDuration:1.8f];
				[planetThree startAnimating];
			}
		} else if (pThreeImageRand == 8) {
			anim3 = [[NSMutableArray alloc] init];
			for (int i=1; i <=20; i++){
				NSString *picname =	[NSString stringWithFormat:@"h%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim3 addObject:img];
				
				[planetThree setAnimationImages:anim3];
				[planetThree setAnimationDuration:1.8f];
				[planetThree startAnimating];
			}
		}
	
	if(pFourImageRand == 1){
		anim4 = [[NSMutableArray alloc] init];
		for (int i=1; i <=26; i++){
			NSString *picname =	[NSString stringWithFormat:@"a%d.png", i];
			UIImage *img = [UIImage imageNamed:picname];
			if (img)[anim4 addObject:img];
			
			[planetFour setAnimationImages:anim4];
			[planetFour setAnimationDuration:1.8f];
			[planetFour startAnimating];
		}
		} else if (pFourImageRand == 2) {
			anim4 = [[NSMutableArray alloc] init];
			for (int i=1; i <=18; i++){
				NSString *picname =	[NSString stringWithFormat:@"b%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim4 addObject:img];
				
				[planetFour setAnimationImages:anim4];
				[planetFour setAnimationDuration:1.8f];
				[planetFour startAnimating];
			}
		} else if (pFourImageRand == 3) {
			anim4 = [[NSMutableArray alloc] init];
			for (int i=1; i <=31; i++){
				NSString *picname =	[NSString stringWithFormat:@"c%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim4 addObject:img];
				
				[planetFour setAnimationImages:anim4];
				[planetFour setAnimationDuration:1.8f];
				[planetFour startAnimating];
			}
		} else if (pFourImageRand == 4) {
			anim4 = [[NSMutableArray alloc] init];
			for (int i=1; i <=29; i++){
				NSString *picname =	[NSString stringWithFormat:@"d%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim4 addObject:img];
				
				[planetFour setAnimationImages:anim4];
				[planetFour setAnimationDuration:1.8f];
				[planetFour startAnimating];
			}
		} else if (pFourImageRand == 5) {
			anim4 = [[NSMutableArray alloc] init];
			for (int i=1; i <=24; i++){
				NSString *picname =	[NSString stringWithFormat:@"e%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim4 addObject:img];
				
				[planetFour setAnimationImages:anim4];
				[planetFour setAnimationDuration:1.8f];
				[planetFour startAnimating];
			}
		} else if (pFourImageRand == 6) {
			anim4 = [[NSMutableArray alloc] init];
			for (int i=1; i <=22; i++){
				NSString *picname =	[NSString stringWithFormat:@"f%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim4 addObject:img];
				
				[planetFour setAnimationImages:anim4];
				[planetFour setAnimationDuration:1.8f];
				[planetFour startAnimating];
			}
		} else if (pFourImageRand == 7) {
			anim4 = [[NSMutableArray alloc] init];
			for (int i=1; i <=22; i++){
				NSString *picname =	[NSString stringWithFormat:@"g%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim4 addObject:img];
				
				[planetFour setAnimationImages:anim4];
				[planetFour setAnimationDuration:1.8f];
				[planetFour startAnimating];
			}
		} else if (pFourImageRand == 8) {
			anim4 = [[NSMutableArray alloc] init];
			for (int i=1; i <=20; i++){
				NSString *picname =	[NSString stringWithFormat:@"h%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim4 addObject:img];
				
				[planetFour setAnimationImages:anim4];
				[planetFour setAnimationDuration:1.8f];
				[planetFour startAnimating];
			}
		}
	
	if(pFiveImageRand == 1){
		anim5 = [[NSMutableArray alloc] init];
		for (int i=1; i <=26; i++){
			NSString *picname =	[NSString stringWithFormat:@"a%d.png", i];
			UIImage *img = [UIImage imageNamed:picname];
			if (img)[anim5 addObject:img];
			
			[planetFive setAnimationImages:anim5];
			[planetFive setAnimationDuration:1.8f];
			[planetFive startAnimating];
		}
		} else if (pFiveImageRand == 2) {
			anim5 = [[NSMutableArray alloc] init];
			for (int i=1; i <=18; i++){
				NSString *picname =	[NSString stringWithFormat:@"b%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim5 addObject:img];
				
				[planetFive setAnimationImages:anim5];
				[planetFive setAnimationDuration:1.8f];
				[planetFive startAnimating];
			}
		} else if (pFiveImageRand == 3) {
			anim5 = [[NSMutableArray alloc] init];
			for (int i=1; i <=31; i++){
				NSString *picname =	[NSString stringWithFormat:@"c%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim5 addObject:img];
				
				[planetFive setAnimationImages:anim5];
				[planetFive setAnimationDuration:1.8f];
				[planetFive startAnimating];
			}
		} else if (pFiveImageRand == 4) {
			anim5 = [[NSMutableArray alloc] init];
			for (int i=1; i <=29; i++){
				NSString *picname =	[NSString stringWithFormat:@"d%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim5 addObject:img];
				
				[planetFive setAnimationImages:anim5];
				[planetFive setAnimationDuration:1.8f];
				[planetFive startAnimating];
			}
		} else if (pFiveImageRand == 5) {
			anim5 = [[NSMutableArray alloc] init];
			for (int i=1; i <=24; i++){
				NSString *picname =	[NSString stringWithFormat:@"e%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim5 addObject:img];
				
				[planetFive setAnimationImages:anim5];
				[planetFive setAnimationDuration:1.8f];
				[planetFive startAnimating];
			}
		} else if (pFiveImageRand == 6) {
			anim5 = [[NSMutableArray alloc] init];
			for (int i=1; i <=22; i++){
				NSString *picname =	[NSString stringWithFormat:@"f%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim5 addObject:img];
				
				[planetFive setAnimationImages:anim5];
				[planetFive setAnimationDuration:1.8f];
				[planetFive startAnimating];
			}
		} else if (pFiveImageRand == 7) {
			anim5 = [[NSMutableArray alloc] init];
			for (int i=1; i <=22; i++){
				NSString *picname =	[NSString stringWithFormat:@"g%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim5 addObject:img];
				
				[planetFive setAnimationImages:anim5];
				[planetFive setAnimationDuration:1.8f];
				[planetFive startAnimating];
			}
		} else if (pFiveImageRand == 8) {
			anim5 = [[NSMutableArray alloc] init];
			for (int i=1; i <=20; i++){
				NSString *picname =	[NSString stringWithFormat:@"h%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim5 addObject:img];
				
				[planetFive setAnimationImages:anim5];
				[planetFive setAnimationDuration:1.8f];
				[planetFive startAnimating];
			}
		}
	
	if(pSixImageRand == 1){
		anim6 = [[NSMutableArray alloc] init];
		for (int i=1; i <=26; i++){
			NSString *picname =	[NSString stringWithFormat:@"a%d.png", i];
			UIImage *img = [UIImage imageNamed:picname];
			if (img)[anim6 addObject:img];
			
			[planetSix setAnimationImages:anim6];
			[planetSix setAnimationDuration:1.8f];
			[planetSix startAnimating];
		}
		} else if (pSixImageRand == 2) {
			anim6 = [[NSMutableArray alloc] init];
			for (int i=1; i <=18; i++){
				NSString *picname =	[NSString stringWithFormat:@"b%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim6 addObject:img];
				
				[planetSix setAnimationImages:anim6];
				[planetSix setAnimationDuration:1.8f];
				[planetSix startAnimating];
			}
		} else if (pSixImageRand == 3) {
			anim6 = [[NSMutableArray alloc] init];
			for (int i=1; i <=31; i++){
				NSString *picname =	[NSString stringWithFormat:@"c%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim6 addObject:img];
				
				[planetSix setAnimationImages:anim6];
				[planetSix setAnimationDuration:1.8f];
				[planetSix startAnimating];
			}
		} else if (pSixImageRand == 4) {
			anim6 = [[NSMutableArray alloc] init];
			for (int i=1; i <=29; i++){
				NSString *picname =	[NSString stringWithFormat:@"d%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim6 addObject:img];
				
				[planetSix setAnimationImages:anim6];
				[planetSix setAnimationDuration:1.8f];
				[planetSix startAnimating];
			}
		} else if (pSixImageRand == 5) {
			anim6 = [[NSMutableArray alloc] init];
			for (int i=1; i <=24; i++){
				NSString *picname =	[NSString stringWithFormat:@"e%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim6 addObject:img];
				
				[planetSix setAnimationImages:anim6];
				[planetSix setAnimationDuration:1.8f];
				[planetSix startAnimating];
			}
		} else if (pSixImageRand == 6) {
			anim6 = [[NSMutableArray alloc] init];
			for (int i=1; i <=22; i++){
				NSString *picname =	[NSString stringWithFormat:@"f%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim6 addObject:img];
				
				[planetSix setAnimationImages:anim6];
				[planetSix setAnimationDuration:1.8f];
				[planetSix startAnimating];
			}
		} else if (pSixImageRand == 7) {
			anim6 = [[NSMutableArray alloc] init];
			for (int i=1; i <=22; i++){
				NSString *picname =	[NSString stringWithFormat:@"g%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim6 addObject:img];
				
				[planetSix setAnimationImages:anim6];
				[planetSix setAnimationDuration:1.8f];
				[planetSix startAnimating];
			}
		} else if (pSixImageRand == 8) {
			anim6 = [[NSMutableArray alloc] init];
			for (int i=1; i <=20; i++){
				NSString *picname =	[NSString stringWithFormat:@"h%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim6 addObject:img];
				
				[planetSix setAnimationImages:anim6];
				[planetSix setAnimationDuration:1.8f];
				[planetSix startAnimating];
			}
		}
	
	if(pSevenImageRand == 1){
		anim7 = [[NSMutableArray alloc] init];
		for (int i=1; i <=26; i++){
			NSString *picname =	[NSString stringWithFormat:@"a%d.png", i];
			UIImage *img = [UIImage imageNamed:picname];
			if (img)[anim7 addObject:img];
			
			[planetSeven setAnimationImages:anim7];
			[planetSeven setAnimationDuration:1.8f];
			[planetSeven startAnimating];
		}
		} else if (pSevenImageRand == 2) {
			anim7 = [[NSMutableArray alloc] init];
			for (int i=1; i <=18; i++){
				NSString *picname =	[NSString stringWithFormat:@"b%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim7 addObject:img];
				
				[planetSeven setAnimationImages:anim7];
				[planetSeven setAnimationDuration:1.8f];
				[planetSeven startAnimating];
			}
		} else if (pSevenImageRand == 3) {
			anim7 = [[NSMutableArray alloc] init];
			for (int i=1; i <=31; i++){
				NSString *picname =	[NSString stringWithFormat:@"c%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim7 addObject:img];
				
				[planetSeven setAnimationImages:anim7];
				[planetSeven setAnimationDuration:1.8f];
				[planetSeven startAnimating];
			}
		} else if (pSevenImageRand == 4) {
			anim7 = [[NSMutableArray alloc] init];
			for (int i=1; i <=29; i++){
				NSString *picname =	[NSString stringWithFormat:@"d%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim7 addObject:img];
				
				[planetSeven setAnimationImages:anim7];
				[planetSeven setAnimationDuration:1.8f];
				[planetSeven startAnimating];
			}
		} else if (pSevenImageRand == 5) {
			anim7 = [[NSMutableArray alloc] init];
			for (int i=1; i <=24; i++){
				NSString *picname =	[NSString stringWithFormat:@"e%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim7 addObject:img];
				
				[planetSeven setAnimationImages:anim7];
				[planetSeven setAnimationDuration:1.8f];
				[planetSeven startAnimating];
			}
		} else if (pSevenImageRand == 6) {
			anim7 = [[NSMutableArray alloc] init];
			for (int i=1; i <=22; i++){
				NSString *picname =	[NSString stringWithFormat:@"f%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim7 addObject:img];
				
				[planetSeven setAnimationImages:anim7];
				[planetSeven setAnimationDuration:1.8f];
				[planetSeven startAnimating];
			}
		} else if (pSevenImageRand == 7) {
			anim7 = [[NSMutableArray alloc] init];
			for (int i=1; i <=22; i++){
				NSString *picname =	[NSString stringWithFormat:@"g%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim7 addObject:img];
				
				[planetSeven setAnimationImages:anim7];
				[planetSeven setAnimationDuration:1.8f];
				[planetSeven startAnimating];
			}
		} else if (pSevenImageRand == 8) {
			anim7 = [[NSMutableArray alloc] init];
			for (int i=1; i <=20; i++){
				NSString *picname =	[NSString stringWithFormat:@"h%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim7 addObject:img];
				
				[planetSeven setAnimationImages:anim7];
				[planetSeven setAnimationDuration:1.8f];
				[planetSeven startAnimating];
			}
		}
	
	if(pEightImageRand == 1){
		anim8 = [[NSMutableArray alloc] init];
		for (int i=1; i <=26; i++){
			NSString *picname =	[NSString stringWithFormat:@"a%d.png", i];
			UIImage *img = [UIImage imageNamed:picname];
			if (img)[anim8 addObject:img];
			
			[planetEight setAnimationImages:anim8];
			[planetEight setAnimationDuration:1.8f];
			[planetEight startAnimating];
		}
		} else if (pEightImageRand == 2) {
			anim8 = [[NSMutableArray alloc] init];
			for (int i=1; i <=18; i++){
				NSString *picname =	[NSString stringWithFormat:@"b%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim8 addObject:img];
				
				[planetEight setAnimationImages:anim8];
				[planetEight setAnimationDuration:1.8f];
				[planetEight startAnimating];
			}
		} else if (pEightImageRand == 3) {
			anim8 = [[NSMutableArray alloc] init];
			for (int i=1; i <=31; i++){
				NSString *picname =	[NSString stringWithFormat:@"c%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim8 addObject:img];
				
				[planetEight setAnimationImages:anim8];
				[planetEight setAnimationDuration:1.8f];
				[planetEight startAnimating];
			}
		} else if (pEightImageRand == 4) {
			anim8 = [[NSMutableArray alloc] init];
			for (int i=1; i <=29; i++){
				NSString *picname =	[NSString stringWithFormat:@"e%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim8 addObject:img];
				
				[planetEight setAnimationImages:anim8];
				[planetEight setAnimationDuration:1.8f];
				[planetEight startAnimating];
			}
		} else if (pEightImageRand == 5) {
			anim8 = [[NSMutableArray alloc] init];
			for (int i=1; i <=24; i++){
				NSString *picname =	[NSString stringWithFormat:@"f%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim8 addObject:img];
				
				[planetEight setAnimationImages:anim8];
				[planetEight setAnimationDuration:1.8f];
				[planetEight startAnimating];
			}
		} else if (pEightImageRand == 6) {
			anim8 = [[NSMutableArray alloc] init];
			for (int i=1; i <=22; i++){
				NSString *picname =	[NSString stringWithFormat:@"g%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim8 addObject:img];
				
				[planetEight setAnimationImages:anim8];
				[planetEight setAnimationDuration:1.8f];
				[planetEight startAnimating];
			}
		} else if (pEightImageRand == 7) {
			anim8 = [[NSMutableArray alloc] init];
			for (int i=1; i <=22; i++){
				NSString *picname =	[NSString stringWithFormat:@"h%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim8 addObject:img];
				
				[planetEight setAnimationImages:anim8];
				[planetEight setAnimationDuration:1.8f];
				[planetEight startAnimating];
			}
		} else if (pEightImageRand == 8) {
			anim8 = [[NSMutableArray alloc] init];
			for (int i=1; i <=20; i++){
				NSString *picname =	[NSString stringWithFormat:@"d%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim8 addObject:img];
				
				[planetEight setAnimationImages:anim8];
				[planetEight setAnimationDuration:1.8f];
				[planetEight startAnimating];
			}
		}
	
	if(pNineImageRand == 1){
		anim9 = [[NSMutableArray alloc] init];
		for (int i=1; i <=26; i++){
			NSString *picname =	[NSString stringWithFormat:@"a%d.png", i];
			UIImage *img = [UIImage imageNamed:picname];
			if (img)[anim9 addObject:img];
			
			[planetNine setAnimationImages:anim9];
			[planetNine setAnimationDuration:1.8f];
			[planetNine startAnimating];
		}
		} else if (pNineImageRand == 2) {
			anim9 = [[NSMutableArray alloc] init];
			for (int i=1; i <=18; i++){
				NSString *picname =	[NSString stringWithFormat:@"b%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim9 addObject:img];
				
				[planetNine setAnimationImages:anim9];
				[planetNine setAnimationDuration:1.8f];
				[planetNine startAnimating];
			}
		} else if (pNineImageRand == 3) {
			anim9 = [[NSMutableArray alloc] init];
			for (int i=1; i <=31; i++){
				NSString *picname =	[NSString stringWithFormat:@"c%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim9 addObject:img];
				
				[planetNine setAnimationImages:anim9];
				[planetNine setAnimationDuration:1.8f];
				[planetNine startAnimating];
			}
		} else if (pNineImageRand == 4) {
			anim9 = [[NSMutableArray alloc] init];
			for (int i=1; i <=29; i++){
				NSString *picname =	[NSString stringWithFormat:@"d%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim9 addObject:img];
				
				[planetNine setAnimationImages:anim9];
				[planetNine setAnimationDuration:1.8f];
				[planetNine startAnimating];
			}
		} else if (pNineImageRand == 5) {
			anim9 = [[NSMutableArray alloc] init];
			for (int i=1; i <=24; i++){
				NSString *picname =	[NSString stringWithFormat:@"e%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim9 addObject:img];
				
				[planetNine setAnimationImages:anim9];
				[planetNine setAnimationDuration:1.8f];
				[planetNine startAnimating];
			}
		} else if (pNineImageRand == 6) {
			anim9 = [[NSMutableArray alloc] init];
			for (int i=1; i <=22; i++){
				NSString *picname =	[NSString stringWithFormat:@"f%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim9 addObject:img];
				
				[planetNine setAnimationImages:anim9];
				[planetNine setAnimationDuration:1.8f];
				[planetNine startAnimating];
			}
		} else if (pNineImageRand == 7) {
			anim9 = [[NSMutableArray alloc] init];
			for (int i=1; i <=22; i++){
				NSString *picname =	[NSString stringWithFormat:@"g%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim9 addObject:img];
				
				[planetNine setAnimationImages:anim9];
				[planetNine setAnimationDuration:1.8f];
				[planetNine startAnimating];
			}
		} else if (pNineImageRand == 8) {
			anim9 = [[NSMutableArray alloc] init];
			for (int i=1; i <=20; i++){
				NSString *picname =	[NSString stringWithFormat:@"h%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim9 addObject:img];
				
				[planetNine setAnimationImages:anim9];
				[planetNine setAnimationDuration:1.8f];
				[planetNine startAnimating];
			}
		}
	
	if(pTenImageRand == 1){
		anim10 = [[NSMutableArray alloc] init];
		for (int i=1; i <=26; i++){
			NSString *picname =	[NSString stringWithFormat:@"a%d.png", i];
			UIImage *img = [UIImage imageNamed:picname];
			if (img)[anim10 addObject:img];
			
			[planetTen setAnimationImages:anim10];
			[planetTen setAnimationDuration:1.8f];
			[planetTen startAnimating];
		}
		} else if (pTenImageRand == 2) {
			anim10 = [[NSMutableArray alloc] init];
			for (int i=1; i <=18; i++){
				NSString *picname =	[NSString stringWithFormat:@"b%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim10 addObject:img];
				
				[planetTen setAnimationImages:anim10];
				[planetTen setAnimationDuration:1.8f];
				[planetTen startAnimating];
			}
		} else if (pTenImageRand == 3) {
			anim10 = [[NSMutableArray alloc] init];
			for (int i=1; i <=31; i++){
				NSString *picname =	[NSString stringWithFormat:@"c%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim10 addObject:img];
				
				[planetTen setAnimationImages:anim10];
				[planetTen setAnimationDuration:1.8f];
				[planetTen startAnimating];
			}
		} else if (pTenImageRand == 4) {
			anim10 = [[NSMutableArray alloc] init];
			for (int i=1; i <=29; i++){
				NSString *picname =	[NSString stringWithFormat:@"d%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim10 addObject:img];
				
				[planetTen setAnimationImages:anim10];
				[planetTen setAnimationDuration:1.8f];
				[planetTen startAnimating];
			}
		} else if (pTenImageRand == 5) {
			anim10 = [[NSMutableArray alloc] init];
			for (int i=1; i <=24; i++){
				NSString *picname =	[NSString stringWithFormat:@"e%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim10 addObject:img];
				
				[planetTen setAnimationImages:anim10];
				[planetTen setAnimationDuration:1.8f];
				[planetTen startAnimating];
			}
		} else if (pTenImageRand == 6) {
			anim10 = [[NSMutableArray alloc] init];
			for (int i=1; i <=22; i++){
				NSString *picname =	[NSString stringWithFormat:@"f%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim10 addObject:img];
				
				[planetTen setAnimationImages:anim10];
				[planetTen setAnimationDuration:1.8f];
				[planetTen startAnimating];
			}
		} else if (pTenImageRand == 7) {
			anim10 = [[NSMutableArray alloc] init];
			for (int i=1; i <=22; i++){
				NSString *picname =	[NSString stringWithFormat:@"g%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim10 addObject:img];
				
				[planetTen setAnimationImages:anim10];
				[planetTen setAnimationDuration:1.8f];
				[planetTen startAnimating];
			}
		} else if (pTenImageRand == 8) {
			anim10 = [[NSMutableArray alloc] init];
			for (int i=1; i <=20; i++){
				NSString *picname =	[NSString stringWithFormat:@"h%d.png", i];
				UIImage *img = [UIImage imageNamed:picname];
				if (img)[anim10 addObject:img];
				
				[planetTen setAnimationImages:anim10];
				[planetTen setAnimationDuration:1.8f];
				[planetTen startAnimating];
			}
		}
	
	if(pElevenImageRand == 1){
		anim11 = [[NSMutableArray alloc] init];
		for (int i=1; i <=26; i++){
			NSString *picname =	[NSString stringWithFormat:@"a%d.png", i];
			UIImage *img = [UIImage imageNamed:picname];
			if (img)[anim11 addObject:img];
			
			[planetEleven setAnimationImages:anim11];
			[planetEleven setAnimationDuration:1.8f];
			[planetEleven startAnimating];
		}
	} else if (pElevenImageRand == 2) {
		anim11 = [[NSMutableArray alloc] init];
		for (int i=1; i <=18; i++){
			NSString *picname =	[NSString stringWithFormat:@"b%d.png", i];
			UIImage *img = [UIImage imageNamed:picname];
			if (img)[anim11 addObject:img];
			
			[planetEleven setAnimationImages:anim11];
			[planetEleven setAnimationDuration:1.8f];
			[planetEleven startAnimating];
		}
	} else if (pElevenImageRand == 3) {
		anim11 = [[NSMutableArray alloc] init];
		for (int i=1; i <=31; i++){
			NSString *picname =	[NSString stringWithFormat:@"c%d.png", i];
			UIImage *img = [UIImage imageNamed:picname];
			if (img)[anim11 addObject:img];
			
			[planetEleven setAnimationImages:anim11];
			[planetEleven setAnimationDuration:1.8f];
			[planetEleven startAnimating];
		}
	} else if (pElevenImageRand == 4) {
		anim11 = [[NSMutableArray alloc] init];
		for (int i=1; i <=29; i++){
			NSString *picname =	[NSString stringWithFormat:@"d%d.png", i];
			UIImage *img = [UIImage imageNamed:picname];
			if (img)[anim11 addObject:img];
			
			[planetEleven setAnimationImages:anim11];
			[planetEleven setAnimationDuration:1.8f];
			[planetEleven startAnimating];
		}
	}
	
	if(pTwelveImageRand == 1){
		anim12 = [[NSMutableArray alloc] init];
		for (int i=1; i <=26; i++){
			NSString *picname =	[NSString stringWithFormat:@"a%d.png", i];
			UIImage *img = [UIImage imageNamed:picname];
			if (img)[anim12 addObject:img];
			
			[planetTwelve setAnimationImages:anim12];
			[planetTwelve setAnimationDuration:1.8f];
			[planetTwelve startAnimating];
		}
	} else if (pTwelveImageRand == 2) {
		anim12 = [[NSMutableArray alloc] init];
		for (int i=1; i <=18; i++){
			NSString *picname =	[NSString stringWithFormat:@"b%d.png", i];
			UIImage *img = [UIImage imageNamed:picname];
			if (img)[anim12 addObject:img];
			
			[planetTwelve setAnimationImages:anim12];
			[planetTwelve setAnimationDuration:1.8f];
			[planetTwelve startAnimating];
		}
	} else if (pTwelveImageRand == 3) {
		anim12 = [[NSMutableArray alloc] init];
		for (int i=1; i <=31; i++){
			NSString *picname =	[NSString stringWithFormat:@"c%d.png", i];
			UIImage *img = [UIImage imageNamed:picname];
			if (img)[anim12 addObject:img];
			
			[planetTwelve setAnimationImages:anim12];
			[planetTwelve setAnimationDuration:1.8f];
			[planetTwelve startAnimating];
		}
	} else if (pTwelveImageRand == 4) {
		anim12 = [[NSMutableArray alloc] init];
		for (int i=1; i <=29; i++){
			NSString *picname =	[NSString stringWithFormat:@"d%d.png", i];
			UIImage *img = [UIImage imageNamed:picname];
			if (img)[anim12 addObject:img];
			
			[planetTwelve setAnimationImages:anim12];
			[planetTwelve setAnimationDuration:1.8f];
			[planetTwelve startAnimating];
		}
	}
	
	if(pThirteenImageRand == 1){
		anim13 = [[NSMutableArray alloc] init];
		for (int i=1; i <=26; i++){
			NSString *picname =	[NSString stringWithFormat:@"a%d.png", i];
			UIImage *img = [UIImage imageNamed:picname];
			if (img)[anim13 addObject:img];
			
			[planetThirteen setAnimationImages:anim13];
			[planetThirteen setAnimationDuration:1.8f];
			[planetThirteen startAnimating];
		}
	} else if (pThirteenImageRand == 2) {
		anim13 = [[NSMutableArray alloc] init];
		for (int i=1; i <=18; i++){
			NSString *picname =	[NSString stringWithFormat:@"b%d.png", i];
			UIImage *img = [UIImage imageNamed:picname];
			if (img)[anim13 addObject:img];
			
			[planetThirteen setAnimationImages:anim13];
			[planetThirteen setAnimationDuration:1.8f];
			[planetThirteen startAnimating];
		}
	} else if (pThirteenImageRand == 3) {
		anim13 = [[NSMutableArray alloc] init];
		for (int i=1; i <=31; i++){
			NSString *picname =	[NSString stringWithFormat:@"c%d.png", i];
			UIImage *img = [UIImage imageNamed:picname];
			if (img)[anim13 addObject:img];
			
			[planetThirteen setAnimationImages:anim13];
			[planetThirteen setAnimationDuration:1.8f];
			[planetThirteen startAnimating];
		}
	} else if (pThirteenImageRand == 4) {
		anim13 = [[NSMutableArray alloc] init];
		for (int i=1; i <=29; i++){
			NSString *picname =	[NSString stringWithFormat:@"d%d.png", i];
			UIImage *img = [UIImage imageNamed:picname];
			if (img)[anim13 addObject:img];
			
			[planetThirteen setAnimationImages:anim13];
			[planetThirteen setAnimationDuration:1.8f];
			[planetThirteen startAnimating];
		}
	}
	
	if(pFourteenImageRand == 1){
		anim14 = [[NSMutableArray alloc] init];
		for (int i=1; i <=26; i++){
			NSString *picname =	[NSString stringWithFormat:@"a%d.png", i];
			UIImage *img = [UIImage imageNamed:picname];
			if (img)[anim14 addObject:img];
			
			[planetFourteen setAnimationImages:anim14];
			[planetFourteen setAnimationDuration:1.8f];
			[planetFourteen startAnimating];
		}
	} else if (pFourteenImageRand == 2) {
		anim14 = [[NSMutableArray alloc] init];
		for (int i=1; i <=18; i++){
			NSString *picname =	[NSString stringWithFormat:@"b%d.png", i];
			UIImage *img = [UIImage imageNamed:picname];
			if (img)[anim14 addObject:img];
			
			[planetFourteen setAnimationImages:anim14];
			[planetFourteen setAnimationDuration:1.8f];
			[planetFourteen startAnimating];
		}
	} else if (pFourteenImageRand == 3) {
		anim14 = [[NSMutableArray alloc] init];
		for (int i=1; i <=31; i++){
			NSString *picname =	[NSString stringWithFormat:@"c%d.png", i];
			UIImage *img = [UIImage imageNamed:picname];
			if (img)[anim14 addObject:img];
			
			[planetFourteen setAnimationImages:anim14];
			[planetFourteen setAnimationDuration:1.8f];
			[planetFourteen startAnimating];
		}
	} else if (pFourteenImageRand == 4) {
		anim14 = [[NSMutableArray alloc] init];
		for (int i=1; i <=29; i++){
			NSString *picname =	[NSString stringWithFormat:@"d%d.png", i];
			UIImage *img = [UIImage imageNamed:picname];
			if (img)[anim14 addObject:img];
			
			[planetFourteen setAnimationImages:anim14];
			[planetFourteen setAnimationDuration:1.8f];
			[planetFourteen startAnimating];
		}
	}
	
	if(pFifteenImageRand == 1){
		anim15 = [[NSMutableArray alloc] init];
		for (int i=1; i <=26; i++){
			NSString *picname =	[NSString stringWithFormat:@"a%d.png", i];
			UIImage *img = [UIImage imageNamed:picname];
			if (img)[anim15 addObject:img];
			
			[planetFifteen setAnimationImages:anim15];
			[planetFifteen setAnimationDuration:1.8f];
			[planetFifteen startAnimating];
		}
	} else if (pFifteenImageRand == 2) {
		anim15 = [[NSMutableArray alloc] init];
		for (int i=1; i <=18; i++){
			NSString *picname =	[NSString stringWithFormat:@"b%d.png", i];
			UIImage *img = [UIImage imageNamed:picname];
			if (img)[anim15 addObject:img];
			
			[planetFifteen setAnimationImages:anim15];
			[planetFifteen setAnimationDuration:1.8f];
			[planetFifteen startAnimating];
		}
	} else if (pFifteenImageRand == 3) {
		anim15 = [[NSMutableArray alloc] init];
		for (int i=1; i <=31; i++){
			NSString *picname =	[NSString stringWithFormat:@"c%d.png", i];
			UIImage *img = [UIImage imageNamed:picname];
			if (img)[anim15 addObject:img];
			
			[planetFifteen setAnimationImages:anim15];
			[planetFifteen setAnimationDuration:1.8f];
			[planetFifteen startAnimating];
		}
	} else if (pFifteenImageRand == 4) {
		anim15 = [[NSMutableArray alloc] init];
		for (int i=1; i <=29; i++){
			NSString *picname =	[NSString stringWithFormat:@"d%d.png", i];
			UIImage *img = [UIImage imageNamed:picname];
			if (img)[anim15 addObject:img];
			
			[planetFifteen setAnimationImages:anim15];
			[planetFifteen setAnimationDuration:1.8f];
			[planetFifteen startAnimating];
		}
	}
	
	
	/*if(pBlankImageRand == 1){
	 animBlank = [[NSMutableArray alloc] init];
	 for (int i=1; i <=26; i++){
	 NSString *picname =	[NSString stringWithFormat:@"a%d.png", i];
	 UIImage *img = [UIImage imageNamed:picname];
	 if (img)[animBlank addObject:img];
	 
	 [planetBlank setAnimationImages:animBlank];
	 [planetBlank setAnimationDuration:1.8f];
	 [planetBlank startAnimating];
	 }
	 } else if (pBlankImageRand == 2) {
	 animBlank = [[NSMutableArray alloc] init];
	 for (int i=1; i <=18; i++){
	 NSString *picname =	[NSString stringWithFormat:@"b%d.png", i];
	 UIImage *img = [UIImage imageNamed:picname];
	 if (img)[animBlank addObject:img];
	 
	 [planetBlank setAnimationImages:animBlank];
	 [planetBlank setAnimationDuration:1.8f];
	 [planetBlank startAnimating];
	 }
	 } else if (pBlankImageRand == 3) {
	 animBlank = [[NSMutableArray alloc] init];
	 for (int i=1; i <=31; i++){
	 NSString *picname =	[NSString stringWithFormat:@"c%d.png", i];
	 UIImage *img = [UIImage imageNamed:picname];
	 if (img)[animBlank addObject:img];
	 
	 [planetBlank setAnimationImages:animBlank];
	 [planetBlank setAnimationDuration:1.8f];
	 [planetBlank startAnimating];
	 }
	 } else if (pBlankImageRand == 4) {
	 animBlank = [[NSMutableArray alloc] init];
	 for (int i=1; i <=29; i++){
	 NSString *picname =	[NSString stringWithFormat:@"d%d.png", i];
	 UIImage *img = [UIImage imageNamed:picname];
	 if (img)[animBlank addObject:img];
	 
	 [planetBlank setAnimationImages:animBlank];
	 [planetBlank setAnimationDuration:1.8f];
	 [planetBlank startAnimating];
	 }
	 }*/
	
	//planetOne.image = [[NSArray array] initWithImage:(UIImage *)image];

	
	pOneXRand = 1 + (arc4random() % 700) + 300;
	pOneYRand = 1 + (arc4random() % 1100) + 900;
	if(pOneXRand > 700)pOneXRand = 700;
	if(pOneYRand > 1100)pOneYRand = 1100;
	
	pTwoXRand = 1 + (arc4random() % 1300) + 1000;
	pTwoYRand = 1 + (arc4random() % 900) + 700;
	if(pTwoXRand > 1300)pTwoXRand = 1300;
	if(pTwoYRand > 900)pTwoYRand = 900;
	
	pThreeXRand = 1 + (arc4random() % 1900) + 1500;
	pThreeYRand = 1 + (arc4random() % 900) + 800;
	if(pThreeXRand > 1900)pThreeXRand = 1900;
	if(pThreeYRand > 900)pThreeYRand = 900;
	
	pFourXRand = 1 + (arc4random() % 2200) + 2000;
	pFourYRand = 1 + (arc4random() % 1200) + 1000;
	if(pFourXRand > 2200)pFourXRand = 2200;
	if(pFourYRand > 1200)pFourYRand = 1200;
	
	pFiveXRand = 1 + (arc4random() % 2200) + 2000;
	pFiveYRand = 1 + (arc4random() % 1700) + 1400;
	if(pFiveXRand > 2200)pFiveXRand = 2200;
	if(pFiveYRand > 1700)pFiveYRand = 1700;
	
	pSixXRand = 1 + (arc4random() % 2200) + 1800;
	pSixYRand = 1 + (arc4random() % 2100) + 1900;
	if(pSixXRand > 2200)pSixXRand = 2200;
	if(pSixYRand > 2100)pSixYRand = 2100;
	
	pSevenXRand = 1 + (arc4random() % 1600) + 1400;
	pSevenYRand = 1 + (arc4random() % 1800) + 1700;
	if(pSevenXRand > 1600)pSevenXRand = 1600;
	if(pSevenYRand > 1800)pSevenYRand = 1800;
	
	pEightXRand = 1 + (arc4random() % 1200) + 1000;
	pEightYRand = 1 + (arc4random() % 1900) + 1600;
	if(pEightXRand > 1200)pEightXRand = 1200;
	if(pEightYRand > 1900)pEightYRand = 1900;
	
	pNineXRand = 1 + (arc4random() % 1100) + 900;
	pNineYRand = 1 + (arc4random() % 1400) + 1200;
	if(pNineXRand > 1100)pNineXRand = 1100;
	if(pNineYRand > 1400)pNineYRand = 1400;
	
	pTenXRand = 1 + (arc4random() % 1800) + 1700;
	pTenYRand = 1 + (arc4random() % 1600) + 1200;
	if(pTenXRand > 1800)pTenXRand = 1800;
	if(pTenYRand > 1600)pTenYRand = 1600;
	
	pElevenXRand = 1 + (arc4random() % 800) + 300;
	pElevenYRand = 1 + (arc4random() % 700) + 300;
	if(pElevenXRand > 1800)pElevenXRand = 1800;
	if(pElevenYRand > 800)pElevenYRand = 800;

	pTwelveXRand = 1 + (arc4random() % 2500) + 2300;
	pTwelveYRand = 1 + (arc4random() % 900) + 300;
	if(pTwelveXRand > 2500)pTwelveXRand = 2500;
	if(pTwelveYRand > 900)pTwelveYRand = 900;

	pThirteenXRand = 1 + (arc4random() % 1000) + 300;
	pThirteenYRand = 1 + (arc4random() % 2500) + 2100;
	if(pThirteenXRand > 1000)pThirteenXRand = 1000;
	if(pThirteenYRand > 2500)pThirteenYRand = 2500;

	pFourteenXRand = 1 + (arc4random() % 2500) + 1800;
	pFourteenYRand = 1 + (arc4random() % 2500) + 2300;
	if(pFourteenXRand > 2500)pFourteenXRand = 2500;
	if(pFourteenYRand > 2500)pFourteenYRand = 2500;

	pFifteenXRand = 1 + (arc4random() % 2500) + 2400;
	pFifteenYRand = 1 + (arc4random() % 1900) + 1200;
	if(pFifteenXRand > 2500)pFifteenXRand = 2500;
	if(pFifteenYRand > 1900)pFifteenYRand = 1900;

	[planetOne		setCenter:CGPointMake	(pOneXRand,		pOneYRand)];
	[pOneB			setCenter:CGPointMake	(pOneXRand,		pOneYRand)];

	[planetTwo		setCenter:CGPointMake	(pTwoXRand ,	pTwoYRand)];
	[pTwoB			setCenter:CGPointMake	(pTwoXRand ,	pTwoYRand)];

	[planetThree	setCenter:CGPointMake	(pThreeXRand,	pThreeYRand)];
	[pThreeB		setCenter:CGPointMake	(pThreeXRand,	pThreeYRand)];

	[planetFour		setCenter:CGPointMake	(pFourXRand,	pFourYRand)];
	[pFourB			setCenter:CGPointMake	(pFourXRand,	pFourYRand)];

	[planetFive		setCenter:CGPointMake	(pFiveXRand,	pFiveYRand)];
	[pFiveB			setCenter:CGPointMake	(pFiveXRand,	pFiveYRand)];

	[planetSix		setCenter:CGPointMake	(pSixXRand,		pSixYRand)];
	[pSixB			setCenter:CGPointMake	(pSixXRand,		pSixYRand)];

	[planetSeven	setCenter:CGPointMake	(pSevenXRand ,	pSevenYRand)];
	[pSevenB		setCenter:CGPointMake	(pSevenXRand ,	pSevenYRand)];

	[planetEight	setCenter:CGPointMake	(pEightXRand,	pEightYRand)];
	[pEightB		setCenter:CGPointMake	(pEightXRand,	pEightYRand)];

	[planetNine		setCenter:CGPointMake	(pNineXRand,	pNineYRand)];
	[pNineB			setCenter:CGPointMake	(pNineXRand,	pNineYRand)];

	[planetTen		setCenter:CGPointMake	(pTenXRand,		pTenYRand)];
	[pTenB			setCenter:CGPointMake	(pTenXRand,		pTenYRand)];

	[planetEleven		setCenter:CGPointMake	(pElevenXRand,		pElevenYRand)];
	[pElevenB			setCenter:CGPointMake	(pElevenXRand,		pElevenYRand)];

	[planetTwelve		setCenter:CGPointMake	(pTwelveXRand,		pTwelveYRand)];
	[pTwelveB			setCenter:CGPointMake	(pTwelveXRand,		pTwelveYRand)];

	[planetThirteen		setCenter:CGPointMake	(pThirteenXRand,	pThirteenYRand)];
	[pThirteenB			setCenter:CGPointMake	(pThirteenXRand,	pThirteenYRand)];

	[planetFourteen		setCenter:CGPointMake	(pFourteenXRand,	pFourteenYRand)];
	[pFourteenB			setCenter:CGPointMake	(pFourteenXRand,	pFourteenYRand)];

	[planetFifteen		setCenter:CGPointMake	(pFifteenXRand,		pFifteenYRand)];
	[pFifteenB			setCenter:CGPointMake	(pFifteenXRand,		pFifteenYRand)];

	/*
	planetTen.hidden = YES;
	planetEleven.hidden = YES;
	planetTwelve.hidden = YES;
	planetThirteen.hidden = YES;
	planetFourteen.hidden = YES;
	planetFifteen.hidden = YES;
	*/
	
	fillOneF.alpha = 1;
	fillTwoF.alpha = 1;
	fillThreeF.alpha = 1;
	fillFourF.alpha = 1;
	
	pearl.hidden = YES;
	more.hidden = YES;
	move.hidden = YES;
	cancel.hidden = YES;
	blur.hidden = YES;
	
	resourceOne.hidden = YES;
	resourceTwo.hidden = YES;
	resourceThree.hidden = YES;
	resourceFour.hidden = YES;
	researchOne.hidden = YES;
	researchTwo.hidden = YES;
	researchThree.hidden = YES;
	researchFour.hidden = YES;
	manuOne.hidden = YES;
	manuTwo.hidden = YES;
	manuThree.hidden = YES;
	manuFour.hidden = YES;
	defenseOne.hidden = YES;
	defenseTwo.hidden = YES;
	defenseThree.hidden = YES;
	defenseFour.hidden = YES;
	
	fillOne.hidden = YES;
	fillTwo.hidden = YES;
	fillThree.hidden = YES;
	fillFour.hidden = YES;
	
	fillOneF.hidden = YES;
	fillTwoF.hidden = YES;
	fillThreeF.hidden = YES;
	fillFourF.hidden = YES;
	
	tabOne.hidden = YES;
	tabTwo.hidden = YES;
	tabThree.hidden = YES;
	tabFour.hidden = YES;
	
	box.hidden = YES;
	
	selectText.hidden = YES;
	
	fillerHolder.hidden = YES;
	whiteLine.hidden = YES;
	
	bigLabel.hidden = YES;
	
	checkB.hidden = YES;
	xB.hidden = YES;
		
	dotCirc.hidden = YES;
	
	menuPiece.hidden = YES;
	mapPiece.hidden = YES;
	infoPiece.hidden = YES;
	menuCancel.hidden = YES;
	
	infoLabel.alpha = 0;
	
	counter.text = [NSString stringWithFormat:@"$%d",counterValue];
	
	CGRect myImageRect = CGRectMake(0.0f, 0.0f, 223.0f, 200.0);
	myImage = [[UIImageView alloc] initWithFrame:myImageRect];
	[myImage setImage:[UIImage imageNamed:@"galaxy.png"]];
	myImage.opaque = YES; // explicitly opaque for performance
	[self.view addSubview:myImage];
	[myImage release];
	
	[self.view sendSubviewToBack: myImage];
	[myImage setCenter:CGPointMake(125, 150)];
	
	CABasicAnimation *fullRotation;
	fullRotation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
	fullRotation.fromValue = [NSNumber numberWithFloat:0];
	fullRotation.toValue = [NSNumber numberWithFloat:((360*M_PI)/180)];
	fullRotation.duration = 60;
	fullRotation.repeatCount = 1e100f;
	
	[myImage.layer addAnimation:fullRotation forKey:@"360"];
}

/*
 // The designated initializer. Override to perform setup that is required before the view is loaded.
 - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
 if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
 // Custom initialization
 }
 return self;
 }
 */

/*
 // Implement loadView to create a view hierarchy programmatically, without using a nib.
 - (void)loadView {
 }
 */

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
