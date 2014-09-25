//
//  Parser.h
//  DN Item Simulator
//
//  Created by mericksters on 9/4/14.
//  Copyright (c) 2014 merick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "List.h"
#import "Itemtableequipment.h"

@interface Parser : NSObject<NSXMLParserDelegate>{
    AppDelegate *app;
    List *theList;
    NSMutableString *currentElementValue;
    
}
@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;

-(id)initParser;


@end
