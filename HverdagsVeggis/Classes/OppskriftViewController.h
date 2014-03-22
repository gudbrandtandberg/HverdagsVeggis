//
//  OppskriftViewController.h
//  HverdagsVeggis
//
//  Created by Gudband Tandberg on 5/15/13.
//  Copyright (c) 2013 Gudband Tandberg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VeggisOppskrift.h"
#import "HovedOppskriftVC.h"
#import "IngrediensVC.h"
#import "FremgangsmaateVC.h"


@interface OppskriftViewController : UIViewController <UIPageViewControllerDataSource, UIPageViewControllerDelegate>

-initWithOppskrift: (VeggisOppskrift *)oppskrift;

@property (strong, nonatomic) UIPageViewController *pageVC;

@property (strong, nonatomic) IBOutlet UIPageControl *pageControl;

@property (weak, nonatomic) VeggisOppskrift *oppskriften;
@property (strong, nonatomic) NSMutableArray *viewCont;

@end
