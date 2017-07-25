#import "QuartzView.h"

@implementation QuartzView

-(id)initWithFrame:(CGRect)frame
{
	self = [super initWithFrame:frame];
	if(self != nil)
	{
		self.backgroundColor = [UIColor blackColor];
		self.opaque = YES;
		self.clearsContextBeforeDrawing = YES;
	}
	return self;
}

-(void)drawInContext:(CGContextRef)context
{
	// Default is to do nothing!
}

-(void)drawRect:(CGRect)rect
{
	[self drawInContext:UIGraphicsGetCurrentContext()];
}

@end