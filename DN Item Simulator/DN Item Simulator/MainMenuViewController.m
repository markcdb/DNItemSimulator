//
//  ViewController.m
//  DN Item Simulator
//
//  Created by mericksters on 8/5/14.
//  Copyright (c) 2014 merick. All rights reserved.
//

#import "MainMenuViewController.h"

@implementation MainMenuViewController
@synthesize itemLabelString;


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    SKView * skView = (SKView *)self.view;
    skView.showsFPS = NO;
    skView.showsNodeCount = NO;
    
    // Create and configure the scene.
    
    SKScene * scene = [GeneralItemScene sceneWithSize:skView.bounds.size];
    scene.scaleMode = SKSceneScaleModeAspectFill;
   
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(receiveNotification:) name:@"Costume" object:nil];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(receiveNotification:) name:@"General" object:nil];
 
    
    
    
    [skView presentScene:scene];
    
}

-(void) receiveNotification:(NSNotification *) notification{
    if([[notification name]isEqualToString:@"Costume"]){
        NSString *costume = [[NSString alloc]initWithFormat:@"Costume"];
        _ItemViewLabel.text = costume;
    }
    else{
        NSString *general = [[NSString alloc]initWithFormat:@"General"];
        _ItemViewLabel.text = general;
    }
}



- (BOOL)shouldAutorotate
{
    return YES;
}
-(BOOL)prefersStatusBarHidden{
    return YES;
    
}

- (NSUInteger)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

@end
