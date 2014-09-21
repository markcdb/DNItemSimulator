//
//  MyScene.h
//  DN Item Simulator
//

//  Copyright (c) 2014 merick. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface GeneralItemScene: SKScene<SKPhysicsContactDelegate>

@property (nonatomic) SKSpriteNode *GenHelm;
@property (nonatomic) SKSpriteNode *GenUpper;
@property (nonatomic) SKSpriteNode *GenLower;
@property (nonatomic) SKSpriteNode *GenGloves;
@property (nonatomic) SKSpriteNode *GenShoes;
@property (nonatomic) SKSpriteNode *GenMainWeap;
@property (nonatomic) SKSpriteNode *GenSecondaryWeap;
@property (nonatomic,retain) NSString *generalLabel;
@property (nonatomic) SKSpriteNode *GenNecklace;
@property (nonatomic) SKSpriteNode *GenRing;
@property (nonatomic) SKSpriteNode *GenEarring;
@property (nonatomic) SKSpriteNode *GenRing2;

@end
