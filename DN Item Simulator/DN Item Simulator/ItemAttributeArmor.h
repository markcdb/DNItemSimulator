//
//  ItemAttributeArmor.h
//  DN Item Simulator
//
//  Created by mericksters on 8/5/14.
//  Copyright (c) 2014 merick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "User.h"

@class EnhanceBonusArmor, User;

@interface ItemAttributeArmor : User

@property (nonatomic, retain) NSNumber * agi;
@property (nonatomic, retain) NSNumber * critResist;
@property (nonatomic, retain) NSNumber * def;
@property (nonatomic, retain) NSNumber * intel;
@property (nonatomic, retain) NSString * itemName;
@property (nonatomic, retain) NSNumber * magicDef;
@property (nonatomic, retain) NSNumber * maxHP;
@property (nonatomic, retain) NSNumber * maxMP;
@property (nonatomic, retain) NSNumber * paraResist;
@property (nonatomic, retain) NSNumber * rarity;
@property (nonatomic, retain) NSNumber * str;
@property (nonatomic, retain) NSNumber * stunResist;
@property (nonatomic, retain) NSNumber * vit;
@property (nonatomic, retain) EnhanceBonusArmor *enhanceBonus;
@property (nonatomic, retain) User *user;

@end
