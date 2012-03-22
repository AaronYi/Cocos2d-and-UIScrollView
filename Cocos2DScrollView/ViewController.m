//
//  ViewController.m
//  Cocos2DScrollView
//
//  Created by Satish Mahalingam on 1/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "cocos2d.h"
#import "CCScrollView.h"
#import "HelloWorld.h"

@implementation ViewController
@synthesize cocosView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

#pragma mark - View lifecycle
- (void)viewDidLoad
{
    [super viewDidLoad];
	CCDirector *director = [CCDirector sharedDirector];    
    
	// Turn on multiple touches
	CCGLView *eaglView = (CCGLView*)[director view];
	[eaglView setMultipleTouchEnabled:YES];
    
    scrollView = [[CCScrollView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
    scrollView.contentSize = CGSizeMake(321, 481);
    [scrollView setUserInteractionEnabled:TRUE];
    [scrollView setScrollEnabled:TRUE];
    [scrollView setDelegate:(id<UIScrollViewDelegate>)scrollView];
    [self.view addSubview:scrollView];
	[cocosView addSubview:eaglView];

    //CCScene *scene = [CCScene node];
    
	//CCLayer *layer = [HelloWorld node];
	//[scene addChild:layer];
    //[director runWithScene: scene];
	CCScene *scene = [HelloWorld scene];
    [director pushScene: scene];

}


- (void)viewDidUnload
{
    [self setCocosView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
