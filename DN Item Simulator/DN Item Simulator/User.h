//
//  User.h
//  DN Item Simulator
//
//  Created by mericksters on 8/5/14.
//  Copyright (c) 2014 merick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class ItemAttributeWeapon;

@interface User : NSManagedObject

@property (nonatomic, retain) NSString * jobUser;
@property (nonatomic, retain) NSString * nickName;
@property (nonatomic, retain) NSManagedObject *itemSelectedArmor;
@property (nonatomic, retain) ItemAttributeWeapon *itemSelectedWeapon;

@end
