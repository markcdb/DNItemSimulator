//
//  ViewController.m
//  DN Item Simulator
//
//  Created by mericksters on 8/5/14.
//  Copyright (c) 2014 merick. All rights reserved.
//

#import "MainMenuViewController.h"
#import "ItemListTableViewController.h"

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
   
    
    [[NSNotificationCenter defaultCenter]
     addObserver:self
     selector:@selector(receiveNotification:)
     name:@"Costume" object:nil];
    
    
    [[NSNotificationCenter defaultCenter]
     addObserver:self
     selector:@selector(receiveNotification:)
     name:@"General" object:nil];
 
    [[NSNotificationCenter defaultCenter]
     addObserver:self
     selector:@selector(itemListReceiver:)
     name:@"ItemListTable" object:nil];
    
    
    
    [skView presentScene:scene];
    
}

-(void) itemListReceiver:(NSNotificationCenter *) notification{
    
    [self performSegueWithIdentifier:@"ItemView" sender:self];
    
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([[segue identifier]isEqualToString:@"ItemView"]){
    [[segue destinationViewController] setManagedObjectContext:self.managedObjectContext];
    }
    
}
-(void) receiveNotification:(NSNotification *) notification{
    if([[notification name]isEqualToString:@"Costume"]){
        NSString *costume = [[NSString alloc]initWithFormat:@"Costume"];
        _ItemViewLabel.text = costume;
    }
    else if([[notification name]isEqualToString:@"General"]){
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

- (IBAction)switchEquipView:(id)sender {
    if(_itemViewSwitcher.on){
        [[NSNotificationCenter defaultCenter]postNotificationName:@"switchCostume" object:nil];
    }
    else{
        [[NSNotificationCenter defaultCenter]postNotificationName:@"switchGeneral" object:nil];

    }
}
@end
