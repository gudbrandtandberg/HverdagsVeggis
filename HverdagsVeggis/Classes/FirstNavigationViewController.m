//
//  VeggisFirstViewController.m
//  HverdagsVeggis
//
//  Created by Gudband Tandberg on 5/15/13.
//  Copyright (c) 2013 Gudband Tandberg. All rights reserved.
//

#import "FirstNavigationViewController.h"

@interface FirstNavigationViewController ()

@end

@implementation FirstNavigationViewController
//"bunnen" i navigationstacken i TabBarController nr 1

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle: nibBundleOrNil];
    if (self) {
		// Setter TabBar-teksten og bildet til denne ViewController'en
		
		self.title = NSLocalizedString(@"hjem", nil);
		self.tabBarItem.image = [UIImage imageNamed:@"home"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Lager HjemViewController'en og pusher den på navigation-stacken
	
	HjemViewController *hjemView = [[HjemViewController alloc] initWithNibName:@"HjemViewController" bundle:nil];
	[self pushViewController:hjemView animated:YES];
	self.title = NSLocalizedString(@"hjem", nil);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Viewskifte-metoder

/*
 * Disse metodene skifter view mellom hjem og forklaring
 */

- (void) skiftHva
{												 
	ForklaringViewController *forklaringsView = [[ForklaringViewController alloc] initWithNibName:
							@"ForklaringViewController" bundle:nil];

    [self pushViewController:forklaringsView animated: YES];
    forklaringsView.textStreng = NSLocalizedString(@"hva", nil);
	forklaringsView.tittelStreng = NSLocalizedString(@"hvaer", nil);
	 
}

- (void) skiftHvordan
{
	ForklaringViewController *forklaringsView = [[ForklaringViewController alloc] initWithNibName:
												 @"ForklaringViewController" bundle:nil];
	
	[self pushViewController:forklaringsView animated: YES];
	
	forklaringsView.textStreng = NSLocalizedString(@"hvordan", @"");
	forklaringsView.tittelStreng = NSLocalizedString(@"hvordanbruke", nil);
}

- (void) skiftEkstra
{
	
	EkstraViewController *ekstraView = [[EkstraViewController alloc] initWithNibName:
							@"EkstraViewController" bundle:nil];
	
	[self pushViewController:ekstraView animated: YES];
	
}

@end
