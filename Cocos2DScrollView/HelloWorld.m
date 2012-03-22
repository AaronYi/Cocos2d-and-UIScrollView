//
//  HelloWorld.m
//  Cocos2DScrollView
//
//  Created by Satish Mahalingam on 1/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "HelloWorld.h"

@implementation HelloWorld

+(id) scene{
	CCScene *scene = [CCScene node];	
    HUDLayer *hud = [HUDLayer node];
    [scene addChild:hud z:-1];
	HelloWorld *layer = [[HelloWorld alloc] initWithHUD:hud];	
	[scene addChild: layer];	
	return scene;
}
-(id)initWithHUD:(HUDLayer *)hud
{
	if( (self=[super init] )) {
        _hud = hud;
		CCLabelTTF *label = [CCLabelTTF labelWithString:@"Hello World" fontName:@"Marker Felt" fontSize:64];
		CGSize size = [[CCDirector sharedDirector] winSize];
		label.position =  ccp( size.width /2 , size.height/2 );
		[self addChild: label];
        CCActionInterval *rotateAction = [CCRotateBy actionWithDuration:4 angle:360];
        id rotateActionForever = [CCRepeatForever actionWithAction:rotateAction];
        [label runAction:rotateActionForever];
	}
	return self;
}

@end
