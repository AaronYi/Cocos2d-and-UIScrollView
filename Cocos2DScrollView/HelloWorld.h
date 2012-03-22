//
//  HelloWorld.h
//  Cocos2DScrollView
//
//  Created by Satish Mahalingam on 1/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "cocos2d.h"
#import "HUDLayer.h"

@interface HelloWorld : CCScene
{
    HUDLayer *_hud;

}
-(id)initWithHUD:(HUDLayer *)hud;
+(id) scene;
@end
