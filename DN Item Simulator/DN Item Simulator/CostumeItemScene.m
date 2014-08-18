//
//  CostumeItemScene.m
//  DN Item Simulator
//
//  Created by mericksters on 8/8/14.
//  Copyright (c) 2014 merick. All rights reserved.
//

#import "CostumeItemScene.h"
#import "MainMenuViewController.h"
#import "GeneralItemScene.h"


@implementation CostumeItemScene

-(instancetype)initWithSize:(CGSize)size{
    
    if(self = [super initWithSize:size]){
        self.backgroundColor = [SKColor whiteColor];
        self.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:self.frame];
        self.physicsWorld.gravity = CGVectorMake(0, 0);
        
        [self costumeItem:size];
    
        
    }
    return self;
    
}

-(void)costumeItem:(CGSize)size{
    
    
    //Helm Config
    self.costumeHelmet= [SKSpriteNode spriteNodeWithImageNamed:@"CostumeHelmet"];
    [self addChild:self.costumeHelmet];
    CGPoint helmPos = CGPointMake(220, 450);
    self.costumeHelmet.position = helmPos;
    //Upper Config
    self.costumeUpper = [SKSpriteNode spriteNodeWithImageNamed:@"CostumeUpper"];
    [self addChild:self.costumeUpper];
    CGPoint upperPos = CGPointMake(215, 393);
    self.costumeUpper.position = upperPos;
    //Lower Config
    self.costumeLower= [SKSpriteNode spriteNodeWithImageNamed:@"CostumeLower"];
    [self addChild:self.costumeLower];
    CGPoint lowerPos = CGPointMake(215, 338);
    self.costumeLower.position = lowerPos;
    //Gloves Config
    self.costumeGloves = [SKSpriteNode spriteNodeWithImageNamed:@"CostumeGloves"];
    [self addChild:self.costumeGloves];
    CGPoint glovePos = CGPointMake(215, 283);
    self.costumeGloves.position = glovePos;
    //Shoes config
    self.costumeShoes= [SKSpriteNode spriteNodeWithImageNamed:@"CostumeShoes"];
    [self addChild:self.costumeShoes];
    CGPoint shoesPos = CGPointMake(215, 228);
    self.costumeShoes.position = shoesPos;
    //Main Weapon Config
    self.costumeMainWeap= [SKSpriteNode spriteNodeWithImageNamed:@"CostumeMainWeap"];
    [self addChild:self.costumeMainWeap];
    CGPoint mainWeapPos = CGPointMake(215, 173);
    self.costumeMainWeap.position = mainWeapPos;
    //Secondary Weapon Config
    self.costumeSecondaryWeapon = [SKSpriteNode spriteNodeWithImageNamed:@"CostumeSecondaryWeap"];
    [self addChild:self.costumeSecondaryWeapon];
    CGPoint secondaryWeapPos = CGPointMake(215, 118);
    self.costumeSecondaryWeapon.position = secondaryWeapPos;

    
}
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    for (UITouch *touch in touches){
        CGPoint genTransition = [touch locationInNode:self];
        CGPoint fixedGenTransition = CGPointMake(genTransition.x, 450);
        CGPoint fixedGenTransitionAfterHelmet = CGPointMake(genTransition.x,450);
        if(fixedGenTransition.x >=280){
            fixedGenTransition.x = 280;
        }
        if(fixedGenTransition.x <=220 ){
            
            fixedGenTransition.x = 220;
            

            
        }
        
            
        if(fixedGenTransition.x == 270){
           

        }
            
        if(fixedGenTransition.x >=280){
            fixedGenTransitionAfterHelmet.x = 275;
            
            GeneralItemScene *costumeTransition= [GeneralItemScene sceneWithSize:self.size];
            [self.view presentScene:costumeTransition transition:[SKTransition crossFadeWithDuration:0.5]];
            }
        if(fixedGenTransitionAfterHelmet.x <=215){
            fixedGenTransitionAfterHelmet.x = 215;
        }
        self.costumeHelmet.position = fixedGenTransition;
        self.costumeUpper.position = CGPointMake(fixedGenTransitionAfterHelmet.x, 393);
        self.costumeLower.position = CGPointMake(fixedGenTransitionAfterHelmet.x, 338);
        self.costumeGloves.position = CGPointMake(fixedGenTransitionAfterHelmet.x, 283);
        self.costumeShoes.position = CGPointMake(fixedGenTransitionAfterHelmet.x, 228);
        self.costumeMainWeap.position = CGPointMake(fixedGenTransitionAfterHelmet.x, 173);
        self.costumeSecondaryWeapon.position = CGPointMake(fixedGenTransitionAfterHelmet.x, 118);
        
    }
}
@end
