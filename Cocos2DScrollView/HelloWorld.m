//
//  HelloWorld.m
//  Cocos2DScrollView
//
//  Created by Satish Mahalingam on 1/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "HelloWorld.h"

@implementation HelloWorld
-(id) init
{
	if( (self=[super init] )) {
		CCLabelTTF *label = [CCLabelTTF labelWithString:@"Hello World" fontName:@"Marker Felt" fontSize:64];
		CGSize size = [[CCDirector sharedDirector] winSize];
		label.position =  ccp( size.width /2 , size.height/2 );
		[self addChild: label];
        CCAction *rotateAction = [CCRotateBy actionWithDuration:4 angle:360];
        id rotateActionForever = [CCRepeatForever actionWithAction:rotateAction];
        [label runAction:rotateActionForever];
	}
	return self;
}

@end
