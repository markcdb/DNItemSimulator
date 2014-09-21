//
//  MyScene.m
//  DN Item Simulator
//
//  Created by mericksters on 8/5/14.
//  Copyright (c) 2014 merick. All rights reserved.
//

#import "GeneralItemScene.h"
#import "MainMenuViewController.h"

@implementation GeneralItemScene
@synthesize  generalLabel;

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {

        self.backgroundColor = [SKColor whiteColor];
    
        
        self.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:self.frame];
        self.physicsWorld.gravity = CGVectorMake(0, 0);
        //configuring the background
        
        SKSpriteNode *bg1 = [SKSpriteNode spriteNodeWithImageNamed:@"bg2"];
        bg1.size = self.frame.size;
        [self addChild:bg1];
        CGPoint bgPos = CGPointMake(self.size.width/2, self.size.height/2);
        bg1.position = bgPos;
        
        //setting up the scene

        [self generalItem:size];

        [[NSNotificationCenter defaultCenter]postNotificationName:@"General"
                                                           object:nil];
        
        [[NSNotificationCenter defaultCenter]addObserver:self
                                                selector:@selector(switchView:)
                                                    name:@"switchCostume"
                                                  object:nil];
    }
    return self;
}

-(void)switchView:(NSNotification*)notification{
    if([[notification name]isEqualToString:@"switchCostume"]){
    CostumeItemScene *costumeTransition= [CostumeItemScene sceneWithSize:self.size];
    [self.view presentScene:costumeTransition transition:[SKTransition crossFadeWithDuration:0.5]];
    }
    [[NSNotificationCenter defaultCenter]removeObserver:self];

}

-(void)generalItem:(CGSize)size{
    //Helm Config
    self.GenHelm= [SKSpriteNode spriteNodeWithImageNamed:@"GenHelm"];
    [self addChild:self.GenHelm];
    CGPoint helmPos = CGPointMake(275, 505);
    self.GenHelm.position = helmPos;
    //Upper Config
    self.GenUpper = [SKSpriteNode spriteNodeWithImageNamed:@"GenUpper"];
    [self addChild:self.GenUpper];
    CGPoint upperPos = CGPointMake(275, 448);
    self.GenUpper.position = upperPos;
    //Lower Config
    self.GenLower= [SKSpriteNode spriteNodeWithImageNamed:@"GenLower"];
    [self addChild:self.GenLower];
    CGPoint lowerPos = CGPointMake(275, 393);
    self.GenLower.position = lowerPos;
    //Gloves Config
    self.GenGloves = [SKSpriteNode spriteNodeWithImageNamed:@"GenGloves"];
    [self addChild:self.GenGloves];
    CGPoint glovePos = CGPointMake(275, 338);
    self.GenGloves.position = glovePos;
    //Shoes config
    self.GenShoes= [SKSpriteNode spriteNodeWithImageNamed:@"GenShoes"];
    [self addChild:self.GenShoes];
    CGPoint shoesPos = CGPointMake(275, 283);
    self.GenShoes.position = shoesPos;
    //Main Weapon Config
    self.GenMainWeap= [SKSpriteNode spriteNodeWithImageNamed:@"GenMainWeap"];
    [self addChild:self.GenMainWeap];
    CGPoint mainWeapPos = CGPointMake(275, 228);
    self.GenMainWeap.position = mainWeapPos;
    //Secondary Weapon Config
    self.GenSecondaryWeap = [SKSpriteNode spriteNodeWithImageNamed:@"GenSecondaryWeap"];
    [self addChild:self.GenSecondaryWeap];
    CGPoint secondaryWeapPos = CGPointMake(275, 173);
    self.GenSecondaryWeap.position = secondaryWeapPos;
    //Ring1
    self.GenRing = [SKSpriteNode spriteNodeWithImageNamed:@"GenRing"];
    [self addChild:self.GenRing];
    CGPoint ringPos = CGPointMake(213, 118);
    self.GenRing.position = ringPos;
    //RIng2
    self.GenRing2 = [SKSpriteNode spriteNodeWithImageNamed:@"GenRing"];
    [self addChild:self.GenRing2];
    CGPoint ring2Pos = CGPointMake(153, 118);
    self.GenRing2.position = ring2Pos;
    //Earring
    self.GenEarring = [SKSpriteNode spriteNodeWithImageNamed:@"GenEarrings"];
    [self addChild:self.GenEarring];
    CGPoint earringPos = CGPointMake(93, 118);
    self.GenEarring.position = earringPos;
    //Necklace
    self.GenNecklace = [SKSpriteNode spriteNodeWithImageNamed:@"GenNecklace"];
    [self addChild:self.GenNecklace];
    CGPoint necklacePos = CGPointMake(33, 118);
    self.GenNecklace.position = necklacePos;

    
    
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touchesNode = [touches anyObject];
    CGPoint location = [touchesNode locationInNode:self];
    NSArray *nodes = [self nodesAtPoint:location];
    for(SKSpriteNode *node in nodes){
        if([node isEqual:self.GenHelm]){
            [[NSNotificationCenter defaultCenter]postNotificationName:@"ItemListTable" object:nil];
        }
        if([node isEqual:self.GenUpper]){
            [[NSNotificationCenter defaultCenter]postNotificationName:@"ItemListTable" object:nil];

        }
        if([node isEqual:self.GenLower]){
            [[NSNotificationCenter defaultCenter]postNotificationName:@"ItemListTable" object:nil];
        }
        if([node isEqual:self.GenGloves]){
            [[NSNotificationCenter defaultCenter]postNotificationName:@"ItemListTable" object:nil];
        }
        if([node isEqual:self.GenShoes]){
            [[NSNotificationCenter defaultCenter]postNotificationName:@"ItemListTable" object:nil];
        }
        if([node isEqual:self.GenMainWeap]){
            [[NSNotificationCenter defaultCenter]postNotificationName:@"ItemListTable" object:nil];
        }
        if([node isEqual:self.GenSecondaryWeap]){
            [[NSNotificationCenter defaultCenter]postNotificationName:@"ItemListTable" object:nil];
        }
        if([node isEqual:self.GenRing]){
            [[NSNotificationCenter defaultCenter]postNotificationName:@"ItemListTable" object:nil];
        }
        if([node isEqual:self.GenRing2]){
            [[NSNotificationCenter defaultCenter]postNotificationName:@"ItemListTable" object:nil];
        }
        if([node isEqual:self.GenNecklace]){
            [[NSNotificationCenter defaultCenter]postNotificationName:@"ItemListTable" object:nil];
        }
        if([node isEqual:self.GenEarring]){
            [[NSNotificationCenter defaultCenter]postNotificationName:@"ItemListTable" object:nil];
        }
    }
}
-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
