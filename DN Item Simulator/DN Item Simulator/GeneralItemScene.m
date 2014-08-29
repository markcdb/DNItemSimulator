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
        

        [self generalItem:size];
        [[NSNotificationCenter defaultCenter]postNotificationName:@"General" object:nil];
        
        

    }
    return self;
}

-(void)generalItem:(CGSize)size{
    //Helm Config
    self.GenHelm= [SKSpriteNode spriteNodeWithImageNamed:@"GenHelm"];
    [self addChild:self.GenHelm];
    CGPoint helmPos = CGPointMake(275, 450);
    self.GenHelm.position = helmPos;
    //Upper Config
    self.GenUpper = [SKSpriteNode spriteNodeWithImageNamed:@"GenUpper"];
    [self addChild:self.GenUpper];
    CGPoint upperPos = CGPointMake(275, 393);
    self.GenUpper.position = upperPos;
    //Lower Config
    self.GenLower= [SKSpriteNode spriteNodeWithImageNamed:@"GenLower"];
    [self addChild:self.GenLower];
    CGPoint lowerPos = CGPointMake(275, 338);
    self.GenLower.position = lowerPos;
    //Gloves Config
    self.GenGloves = [SKSpriteNode spriteNodeWithImageNamed:@"GenGloves"];
    [self addChild:self.GenGloves];
    CGPoint glovePos = CGPointMake(275, 283);
    self.GenGloves.position = glovePos;
    //Shoes config
    self.GenShoes= [SKSpriteNode spriteNodeWithImageNamed:@"GenShoes"];
    [self addChild:self.GenShoes];
    CGPoint shoesPos = CGPointMake(275, 228);
    self.GenShoes.position = shoesPos;
    //Main Weapon Config
    self.GenMainWeap= [SKSpriteNode spriteNodeWithImageNamed:@"GenMainWeap"];
    [self addChild:self.GenMainWeap];
    CGPoint mainWeapPos = CGPointMake(275, 173);
    self.GenMainWeap.position = mainWeapPos;
    //Secondary Weapon Config
    self.GenSecondaryWeap = [SKSpriteNode spriteNodeWithImageNamed:@"GenSecondaryWeap"];
    [self addChild:self.GenSecondaryWeap];
    CGPoint secondaryWeapPos = CGPointMake(275, 118);
    self.GenSecondaryWeap.position = secondaryWeapPos;
}
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    for(UITouch *touch in touches) {
        CGPoint performTransition = [touch locationInNode:self];
        CGPoint fixedTransitioned = CGPointMake(performTransition.x, 450);
        CGPoint afterHelmetTransition = CGPointMake(performTransition.x, 450);
        if(fixedTransitioned.x >= 275){
            fixedTransitioned.x = 275;
        
                }
        if(fixedTransitioned.x <=215){
            afterHelmetTransition.x = 215;

        }
        if(afterHelmetTransition.x >=275){
            afterHelmetTransition.x = 275;
            NSLog(@"%f",fixedTransitioned.x);
            
        }

        self.GenHelm.position = CGPointMake(afterHelmetTransition.x, 450);
        self.GenUpper.position = CGPointMake(afterHelmetTransition.x, 393);
        self.GenLower.position = CGPointMake(afterHelmetTransition.x, 338);
        self.GenGloves.position = CGPointMake(afterHelmetTransition.x, 283);
        self.GenShoes.position = CGPointMake(afterHelmetTransition.x, 228);
        self.GenMainWeap.position = CGPointMake(afterHelmetTransition.x, 173);
        self.GenSecondaryWeap.position = CGPointMake(afterHelmetTransition.x, 118);
        if(fixedTransitioned.x <=215){
                CostumeItemScene *costumeTransition= [CostumeItemScene sceneWithSize:self.size];
            [self.view presentScene:costumeTransition transition:[SKTransition crossFadeWithDuration:0.5]];
            
            }
        }
    }

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
