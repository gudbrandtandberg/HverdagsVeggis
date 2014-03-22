//
//  VeggisSecondViewController.m
//  HverdagsVeggis
//
//  Created by Gudband Tandberg on 5/15/13.
//  Copyright (c) 2013 Gudband Tandberg. All rights reserved.
//

#import "SecondNavigationViewController.h"

@interface SecondNavigationViewController ()
@end

@implementation SecondNavigationViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
		self.tabBarItem.image = [UIImage imageNamed:@"knivoggaffel"];
		self.navigationBar.barTintColor = [UIColor colorWithRed:221./255 green:214./255 blue:140./255 alpha:1];
        self.navigationBar.tintColor = [UIColor colorWithRed:69./255 green:90./255 blue:28./255 alpha:1];
		self.title = NSLocalizedString(@"oppskrifter", nil);
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	self.tabBarItem.image = [UIImage imageNamed:@"knivoggaffel"];
	self.title = NSLocalizedString(@"oppskrifter", nil);       //tittel i tabbaren

	// Lager tabell-viewcontrolleren som skal vises:
	
	OppskriftTabellViewController *tabell = [[OppskriftTabellViewController alloc] init];
	[self pushViewController:tabell animated:YES];
	
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
