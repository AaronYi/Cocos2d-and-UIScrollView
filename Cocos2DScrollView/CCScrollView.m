//
//  CCScrollView.m
//  Cocos2DScrollView
//
//  Created by Satish Mahalingam on 12/31/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "CCScrollView.h"

@implementation CCScrollView

#pragma mark - UIScrollView Delegate Methods
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    //NSLog(@"scrolled");
    CGPoint dragPt = [scrollView contentOffset];
    CCScene* currentScene = [[CCDirector sharedDirector] runningScene];
    CCLayer* topLayer = (CCLayer *)[currentScene.children objectAtIndex:0];
    dragPt.x = dragPt.x * -1;
    [topLayer setPosition:dragPt];
}

#pragma mark - Touch Delegate Methods

-(void) touchesBegan: (NSSet *) touches withEvent: (UIEvent *) event
{
    NSLog(@"touchesBegan");
    if (!self.dragging)
    {
        [self.nextResponder touchesBegan: touches withEvent:event];
        [[[CCDirector sharedDirector] openGLView] touchesBegan:touches withEvent:event];
    }
    
    [super touchesBegan: touches withEvent: event];
}

-(void) touchesEnded: (NSSet *) touches withEvent: (UIEvent *) event
{
    NSLog(@"touchesEnded");
    if (!self.dragging)
    {
        [self.nextResponder touchesEnded: touches withEvent:event];
        [[[CCDirector sharedDirector] openGLView] touchesEnded:touches withEvent:event];
    }
    
    [super touchesEnded: touches withEvent: event];
}

@end