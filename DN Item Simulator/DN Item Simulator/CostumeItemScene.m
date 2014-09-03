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
        SKSpriteNode *bg1 = [SKSpriteNode spriteNodeWithImageNamed:@"bg2"];
        bg1.size = self.frame.size;
        
        [self addChild:bg1];
        CGPoint bgPos = CGPointMake(self.size.width/2, self.size.height/2);
        bg1.position = bgPos;
        [self costumeItem:size];
        [[NSNotificationCenter defaultCenter]postNotificationName:@"Costume" object:nil];

    
        [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(switchView2:) name:@"switchGeneral" object:nil];
    }
    return self;
    
}

-(void)switchView2:(NSNotification*)notification{
        if([[notification name]isEqualToString:@"switchGeneral"]){
            GeneralItemScene *costumeTransition= [GeneralItemScene sceneWithSize:self.size];
            [self.view presentScene:costumeTransition transition:[SKTransition crossFadeWithDuration:0.5]];
        }
    [[NSNotificationCenter defaultCenter]removeObserver:self];

    
}

-(void)costumeItem:(CGSize)size{
    
    
    //Helm Config
    self.costumeHelmet= [SKSpriteNode spriteNodeWithImageNamed:@"CostumeHelmet"];
    [self addChild:self.costumeHelmet];
    CGPoint helmPos = CGPointMake(275, 505);
    self.costumeHelmet.position = helmPos;
    //Upper Config
    self.costumeUpper = [SKSpriteNode spriteNodeWithImageNamed:@"CostumeUpper"];
    [self addChild:self.costumeUpper];
    CGPoint upperPos = CGPointMake(275, 448);
    self.costumeUpper.position = upperPos;
    //Lower Config
    self.costumeLower= [SKSpriteNode spriteNodeWithImageNamed:@"CostumeLower"];
    [self addChild:self.costumeLower];
    CGPoint lowerPos = CGPointMake(275, 393);
    self.costumeLower.position = lowerPos;
    //Gloves Config
    self.costumeGloves = [SKSpriteNode spriteNodeWithImageNamed:@"CostumeGloves"];
    [self addChild:self.costumeGloves];
    CGPoint glovePos = CGPointMake(275, 338);
    self.costumeGloves.position = glovePos;
    //Shoes config
    self.costumeShoes= [SKSpriteNode spriteNodeWithImageNamed:@"CostumeShoes"];
    [self addChild:self.costumeShoes];
    CGPoint shoesPos = CGPointMake(275, 283);
    self.costumeShoes.position = shoesPos;
    //Main Weapon Config
    self.costumeMainWeap= [SKSpriteNode spriteNodeWithImageNamed:@"CostumeMainWeap"];
    [self addChild:self.costumeMainWeap];
    CGPoint mainWeapPos = CGPointMake(275, 228);
    self.costumeMainWeap.position = mainWeapPos;
    //Secondary Weapon Config
    self.costumeSecondaryWeapon = [SKSpriteNode spriteNodeWithImageNamed:@"CostumeSecondaryWeap"];
    [self addChild:self.costumeSecondaryWeapon];
    CGPoint secondaryWeapPos = CGPointMake(275, 173);
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
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touchesNode = [touches anyObject];
    CGPoint location = [touchesNode locationInNode:self];
    NSArray *nodes = [self nodesAtPoint:location];
    for(SKSpriteNode *node in nodes){
        if([node isEqual:self.costumeHelmet]){
            [[NSNotificationCenter defaultCenter]postNotificationName:@"ItemListTable" object:nil];
        }
        if([node isEqual:self.costumeUpper]){
            [[NSNotificationCenter defaultCenter]postNotificationName:@"ItemListTable" object:nil];
            
        }
        if([node isEqual:self.costumeLower]){
            [[NSNotificationCenter defaultCenter]postNotificationName:@"ItemListTable" object:nil];
        }
        if([node isEqual:self.costumeGloves]){
            [[NSNotificationCenter defaultCenter]postNotificationName:@"ItemListTable" object:nil];
        }
        if([node isEqual:self.costumeShoes]){
            [[NSNotificationCenter defaultCenter]postNotificationName:@"ItemListTable" object:nil];
        }
        if([node isEqual:self.costumeMainWeap]){
            [[NSNotificationCenter defaultCenter]postNotificationName:@"ItemListTable" object:nil];
        }
        if([node isEqual:self.costumeSecondaryWeapon]){
            [[NSNotificationCenter defaultCenter]postNotificationName:@"ItemListTable" object:nil];
        }
        if([node isEqual:self.cosRing]){
            [[NSNotificationCenter defaultCenter]postNotificationName:@"ItemListTable" object:nil];
        }
        if([node isEqual:self.cosRings2]){
            [[NSNotificationCenter defaultCenter]postNotificationName:@"ItemListTable" object:nil];
        }
        if([node isEqual:self.cosNecklace]){
            [[NSNotificationCenter defaultCenter]postNotificationName:@"ItemListTable" object:nil];
        }
        if([node isEqual:self.cosEarrings]){
            [[NSNotificationCenter defaultCenter]postNotificationName:@"ItemListTable" object:nil];
        }
    }
}

@end
