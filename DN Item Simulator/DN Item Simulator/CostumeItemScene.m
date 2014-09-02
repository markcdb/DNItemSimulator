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
        SKSpriteNode *bg1 = [SKSpriteNode spriteNodeWithImageNamed:@"bg1Final"];
        bg1.size = self.frame.size;
        
        [self addChild:bg1];
        CGPoint bgPos = CGPointMake(self.size.width/2, self.size.height/2);
        bg1.position = bgPos;
        [self costumeItem:size];
    
        [[NSNotificationCenter defaultCenter]postNotificationName:@"Costume" object:self];

    }
    return self;
    
}

-(void)costumeItem:(CGSize)size{
    
    
    //Helm Config
    self.costumeHelmet= [SKSpriteNode spriteNodeWithImageNamed:@"CostumeHelmet"];
    [self addChild:self.costumeHelmet];
    CGPoint helmPos = CGPointMake(220, 505);
    self.costumeHelmet.position = helmPos;
    //Upper Config
    self.costumeUpper = [SKSpriteNode spriteNodeWithImageNamed:@"CostumeUpper"];
    [self addChild:self.costumeUpper];
    CGPoint upperPos = CGPointMake(220, 448);
    self.costumeUpper.position = upperPos;
    //Lower Config
    self.costumeLower= [SKSpriteNode spriteNodeWithImageNamed:@"CostumeLower"];
    [self addChild:self.costumeLower];
    CGPoint lowerPos = CGPointMake(220, 393);
    self.costumeLower.position = lowerPos;
    //Gloves Config
    self.costumeGloves = [SKSpriteNode spriteNodeWithImageNamed:@"CostumeGloves"];
    [self addChild:self.costumeGloves];
    CGPoint glovePos = CGPointMake(220, 338);
    self.costumeGloves.position = glovePos;
    //Shoes config
    self.costumeShoes= [SKSpriteNode spriteNodeWithImageNamed:@"CostumeShoes"];
    [self addChild:self.costumeShoes];
    CGPoint shoesPos = CGPointMake(220, 283);
    self.costumeShoes.position = shoesPos;
    //Main Weapon Config
    self.costumeMainWeap= [SKSpriteNode spriteNodeWithImageNamed:@"CostumeMainWeap"];
    [self addChild:self.costumeMainWeap];
    CGPoint mainWeapPos = CGPointMake(220, 228);
    self.costumeMainWeap.position = mainWeapPos;
    //Secondary Weapon Config
    self.costumeSecondaryWeapon = [SKSpriteNode spriteNodeWithImageNamed:@"CostumeSecondaryWeap"];
    [self addChild:self.costumeSecondaryWeapon];
    CGPoint secondaryWeapPos = CGPointMake(220, 173);
    self.costumeSecondaryWeapon.position = secondaryWeapPos;
    //Ring1
    self.cosRing = [SKSpriteNode spriteNodeWithImageNamed:@"CosRings"];
    [self addChild:self.cosRing];
    CGPoint ringPos = CGPointMake(213, 118);
    self.cosRing.position = ringPos;
    //RIng2
    self.cosRings2 = [SKSpriteNode spriteNodeWithImageNamed:@"CosRings"];
    [self addChild:self.cosRings2];
    CGPoint ring2Pos = CGPointMake(153, 118);
    self.cosRings2.position = ring2Pos;
    //Earring
    self.cosEarrings = [SKSpriteNode spriteNodeWithImageNamed:@"CosEarrings"];
    [self addChild:self.cosEarrings];
    CGPoint earringPos = CGPointMake(93, 118);
    self.cosEarrings.position = earringPos;
    //Necklace
    self.cosNecklace = [SKSpriteNode spriteNodeWithImageNamed:@"CosNecklace"];
    [self addChild:self.cosNecklace];
    CGPoint necklacePos = CGPointMake(33, 118);
    self.cosNecklace.position = necklacePos;

    
}
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    for (UITouch *touch in touches){
        CGPoint genTransition = [touch locationInNode:self];
        CGPoint fixedGenTransition = CGPointMake(genTransition.x, 450);
        CGPoint fixedGenTransitionAfterHelmet = CGPointMake(genTransition.x,450);
        if(fixedGenTransition.x >=280){
            fixedGenTransition.x = 280;
        }
       
        
        if(fixedGenTransitionAfterHelmet.x >=275){
            fixedGenTransitionAfterHelmet.x = 275;
            
            GeneralItemScene *costumeTransition= [GeneralItemScene sceneWithSize:self.size];
            [self.view presentScene:costumeTransition transition:[SKTransition crossFadeWithDuration:0.5]];
            }
        if(fixedGenTransitionAfterHelmet.x <=220){
            fixedGenTransitionAfterHelmet.x = 220;
        }
        self.costumeHelmet.position = CGPointMake(fixedGenTransitionAfterHelmet.x, 505);;
        self.costumeUpper.position = CGPointMake(fixedGenTransitionAfterHelmet.x, 448);
        self.costumeLower.position = CGPointMake(fixedGenTransitionAfterHelmet.x, 393);
        self.costumeGloves.position = CGPointMake(fixedGenTransitionAfterHelmet.x, 338);
        self.costumeShoes.position = CGPointMake(fixedGenTransitionAfterHelmet.x, 283);
        self.costumeMainWeap.position = CGPointMake(fixedGenTransitionAfterHelmet.x, 228);
        self.costumeSecondaryWeapon.position = CGPointMake(fixedGenTransitionAfterHelmet.x, 173);
    
    }
}
@end
