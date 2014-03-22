//
//  HjemViewController.m
//  HverdagsVeggis
//
//  Created by Gudband Tandberg on 5/15/13.
//  Copyright (c) 2013 Gudband Tandberg. All rights reserved.
//

#import "HjemViewController.h"
#import "ForklaringViewController.h"
#import "FirstNavigationViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface HjemViewController ()

@end

@implementation HjemViewController

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
	
	//Dette blir teksten på "back"-knappen i forklaringsviewet
	self.navigationItem.title = @"";
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:221./255 green:214/255. blue:140/255. alpha:1];
    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:69./255 green:92./255 blue:28./255 alpha:1];
	
	self.knapp1.titleLabel.text = NSLocalizedString(@"hvaer", nil);
	self.knapp2.titleLabel.text = NSLocalizedString(@"hvorforbli", nil);
	self.knapp3.titleLabel.text = NSLocalizedString(@"ekstra", nil);
	self.knapp1.layer.cornerRadius = 1.0;
	self.knapp1.layer.masksToBounds = YES;
	self.knapp2.layer.cornerRadius = 1.0;
	self.knapp2.layer.masksToBounds = YES;
	self.knapp3.layer.cornerRadius = 1.0;
	self.knapp3.layer.masksToBounds = YES;
	 
	//setter bakgrunnen i Hjem-skjermen
	self.bakgrunn.image = [UIImage imageNamed:@"Bakgrunnsbilde"];
	[self.bakgrunn setBounds:[[UIScreen mainScreen] bounds]];


}

- (void)viewWillAppear:(BOOL)animated
{
	//Sørger for at navigationbar'en skjules i hjemviewet
    [self.navigationController setNavigationBarHidden:YES animated:animated];
    [super viewWillAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	// Sørger for at navigationbar'en vises i forklaringsviewet
    [self.navigationController setNavigationBarHidden:NO animated:animated];
    [super viewWillDisappear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Knappene i hjem-menyen


- (IBAction)hva:(id)sender {
	[(FirstNavigationViewController *)self.parentViewController skiftHva];
}

- (IBAction)hvordan:(id)sender {
	[(FirstNavigationViewController *)self.parentViewController skiftHvordan];
}

- (IBAction)ekstra:(id)sender {
	[(FirstNavigationViewController *)self.parentViewController skiftEkstra];
}

@end
