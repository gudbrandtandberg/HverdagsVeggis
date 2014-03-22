//
//  ForklaringViewController.m
//  HverdagsVeggis
//
//  Created by Gudband Tandberg on 5/15/13.
//  Copyright (c) 2013 Gudband Tandberg. All rights reserved.
//

#import "ForklaringViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ForklaringViewController ()
@end

@implementation ForklaringViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
	
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:221./255 green:214/255. blue:140/255. alpha:1];
    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:69./255 green:92./255 blue:28./255 alpha:1];
    self.textFelt.text = self.textStreng;
    self.title = self.tittelStreng;
    self.textFelt.contentInset = UIEdgeInsetsMake(-70,0,0,0);

	self.textFelt.layer.cornerRadius=5;
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
	
}

@end
