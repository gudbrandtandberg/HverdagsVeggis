//
//  EkstraViewController.h
//  HverdagsVeggis
//
//  Created by Gudbrand Tandberg on 9/4/13.
//  Copyright (c) 2013 Gudband Tandberg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HovedOppskriftVC.h"
#import "ForklaringViewController.h"

@interface EkstraViewController : UIViewController

- (IBAction)skiftDel:(id)sender;
- (IBAction)omSkaperen:(id)sender;
- (IBAction)skiftVeggisordbok:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *skaperenKnapp;
@property (weak, nonatomic) IBOutlet UIButton *delKnapp;
@property (weak, nonatomic) IBOutlet UIButton *stoppeklokkeKnapp;

@end
