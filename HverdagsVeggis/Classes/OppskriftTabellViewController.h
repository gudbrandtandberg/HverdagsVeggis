//
//  OppskriftTabell.h
//  HverdagsVeggis
//
//  Created by Gudband Tandberg on 5/15/13.
//  Copyright (c) 2013 Gudband Tandberg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AlleOppskrifteneDataController.h"

@interface OppskriftTabellViewController : UITableViewController
<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, copy) AlleOppskrifteneDataController *oppskriftene;

@end
