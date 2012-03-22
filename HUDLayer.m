//
//  HUDLayer.m
//  Cocos2DScrollView
//
//  Created by Satish Mahalingam on 3/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "HUDLayer.h"

@implementation HUDLayer
-(void)displayHud{
    CCLabelTTF *label = [CCLabelTTF labelWithString:@"HUD: I will not scroll!" fontName:@"Marker Felt" fontSize:32];
    label.position = ccp(140,450);
    [self addChild:label];

}
- (id)init {
    
    if ((self = [super init])) {
        [self displayHud];
    }
    return self;
}

@end
