//
//  EnhanceBonusArmor.h
//  DN Item Simulator
//
//  Created by mericksters on 8/5/14.
//  Copyright (c) 2014 merick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface EnhanceBonusArmor : NSManagedObject

@property (nonatomic, retain) NSNumber * enhanceBonusAgi;
@property (nonatomic, retain) NSNumber * enhanceBonusInt;
@property (nonatomic, retain) NSNumber * enhanceBonusMaxHp;
@property (nonatomic, retain) NSNumber * enhanceBonusMaxMp;
@property (nonatomic, retain) NSNumber * enhanceBonusStr;
@property (nonatomic, retain) NSNumber * enhanceBonusVit;
@property (nonatomic, retain) NSManagedObject *itemAttribute;

@end
