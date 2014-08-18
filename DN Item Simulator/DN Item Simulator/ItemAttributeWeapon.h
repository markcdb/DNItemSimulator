//
//  ItemAttributeWeapon.h
//  DN Item Simulator
//
//  Created by mericksters on 8/5/14.
//  Copyright (c) 2014 merick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface ItemAttributeWeapon : NSManagedObject

@property (nonatomic, retain) NSString * itemName;
@property (nonatomic, retain) NSData * itemPicture;
@property (nonatomic, retain) NSNumber * maxMatk;
@property (nonatomic, retain) NSNumber * maxPatk;
@property (nonatomic, retain) NSNumber * minMatk;
@property (nonatomic, retain) NSNumber * minPatk;
@property (nonatomic, retain) NSString * rarity;
@property (nonatomic, retain) NSNumber * statsBonusAgi;
@property (nonatomic, retain) NSNumber * statsBonusCrit;
@property (nonatomic, retain) NSNumber * statsBonusInt;
@property (nonatomic, retain) NSNumber * statsBonusPara;
@property (nonatomic, retain) NSNumber * statsBonusStr;
@property (nonatomic, retain) NSNumber * statsBonusStun;
@property (nonatomic, retain) NSNumber * statsBonusVit;
@property (nonatomic, retain) NSManagedObject *enhanceBonus;
@property (nonatomic, retain) NSManagedObject *user;

@end
