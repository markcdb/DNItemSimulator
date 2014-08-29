//
//  ViewController.h
//  DN Item Simulator
//

//  Copyright (c) 2014 merick. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SpriteKit/SpriteKit.h>
#import "CostumeItemScene.h"
#import "GeneralItemScene.h"

@interface MainMenuViewController : UIViewController<changeLabel>

@property (strong,nonatomic)NSString *itemLabelString;
@property (retain, nonatomic) IBOutlet UILabel *ItemViewLabel;


@end
