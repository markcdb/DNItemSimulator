//
//  ItemListTableViewController.h
//  DN Item Simulator
//
//  Created by mericksters on 9/3/14.
//  Copyright (c) 2014 merick. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "List.h"

@interface ItemListTableViewController : UITableViewController

@property(nonatomic,retain) AppDelegate *app;
@property(nonatomic,retain) List *theList;


@end
