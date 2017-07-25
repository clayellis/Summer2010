//
//  dragImageViewController.h
//  scroller
//
//  Created by Chad Ellis on 7/27/10.
//  Copyright 2010 Hammond and Ellis. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface myDraggableImage : UIImageView {
	
	- (void) touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event {
		
		// Retrieve the touch point
		CGPoint pt = [[touches anyObject] locationInView:self];
		startLocation = pt;
		[[self superview] bringSubviewToFront:self];
		
	}
	- (void) touchesMoved:(NSSet*)touches withEvent:(UIEvent*)event {
		
		// Move relative to the original touch point
		CGPoint pt = [[touches anyObject] locationInView:self];
		CGRect frame = [self frame];
		frame.origin.x += pt.x - startLocation.x;
		frame.origin.y += pt.y - startLocation.y;
		[self setFrame:frame];
	}
}

@end
