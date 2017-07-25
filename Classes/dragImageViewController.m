//
//  dragImageViewController.m
//  scroller
//
//  Created by Chad Ellis on 7/27/10.
//  Copyright 2010 Hammond and Ellis. All rights reserved.
//

#import "dragImageViewController.h"


@implementation dragImageViewController


- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        dragger = [[myDraggableImage alloc] initWithFrame:myDragRect];
		[dragger setImage:[UIImage imageNamed:@"myImage.png"]];
		[dragger setUserInteractionEnabled:YES];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)dealloc {
    [super dealloc];
}


@end
