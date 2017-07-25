#import "QuartzCurves.h"

@implementation scrollerViewController

-(void)drawInContext:(CGContextRef)context
{
	// Drawing with a white stroke color
	CGContextSetRGBStrokeColor(context, 0.0, 0.0, 0.0, 0.0);
	// And draw with a blue fill color
	CGContextSetRGBFillColor(context, 0.0, 0.0, 1.0, 1.0);
	// Draw them with a 2.0 stroke width so they are a bit more visible.
	CGContextSetLineWidth(context, 5.0);
	
	// Add an ellipse circumscribed in the given rect to the current path, then stroke it
	CGContextAddEllipseInRect(context, CGRectMake(30.0, 30.0, 60.0, 60.0));
	CGContextStrokePath(context);

}

@end