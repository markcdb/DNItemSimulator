//
//  ItemtableTableViewController.h
//  DN Item Simulator
//
//  Created by mericksters on 9/24/14.
//  Copyright (c) 2014 merick. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Itemtableequipment.h"
@interface ItemtableTableViewController : UITableViewController

@property (nonatomic , strong) NSManagedObjectContext *managedObjectContext;
@property (nonatomic , strong) NSFetchedResultsController *fethcedResultsController;


@end
