//
//  EnhanceBonusWeapon.h
//  DN Item Simulator
//
//  Created by mericksters on 8/5/14.
//  Copyright (c) 2014 merick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "ItemAttributeWeapon.h"

@class ItemAttributeWeapon;

@interface EnhanceBonusWeapon : ItemAttributeWeapon

@property (nonatomic, retain) NSNumber * enhanceBonusAgi;
@property (nonatomic, retain) NSNumber * enhanceBonusInt;
@property (nonatomic, retain) NSNumber * enhanceBonusMaxAtk;
@property (nonatomic, retain) NSNumber * enhanceBonusMaxDef;
@property (nonatomic, retain) NSNumber * enhanceBonusMaxMdef;
@property (nonatomic, retain) NSNumber * enhanceBonusMaxPatk;
@property (nonatomic, retain) NSNumber * enhanceBonusMinAtk;
@property (nonatomic, retain) NSNumber * enhanceBonusMInDef;
@property (nonatomic, retain) NSNumber * enhanceBonusMinMdef;
@property (nonatomic, retain) NSNumber * enhanceBonusMinPatk;
@property (nonatomic, retain) NSNumber * enhanceBonusStr;
@property (nonatomic, retain) NSNumber * enhanceBonusVit;
@property (nonatomic, retain) ItemAttributeWeapon *itemAttribute;

@end
