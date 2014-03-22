//
//  VeggisFirstViewController.h
//  HverdagsVeggis
//
//  Created by Gudband Tandberg on 5/15/13.
//  Copyright (c) 2013 Gudband Tandberg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ForklaringViewController.h"
#import "HjemViewController.h"
#import "EkstraViewController.h"

@interface FirstNavigationViewController : UINavigationController

- (void) skiftHva;
- (void) skiftHvordan;
- (void) skiftEkstra;

@end
