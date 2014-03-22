//
//  EkstraViewController.m
//  HverdagsVeggis
//
//  Created by Gudbrand Tandberg on 9/4/13.
//  Copyright (c) 2013 Gudband Tandberg. All rights reserved.
//

#import "EkstraViewController.h"

@interface EkstraViewController ()

@end

@implementation EkstraViewController

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
	self.title = NSLocalizedString(@"ekstra", nil);
    self.navigationItem.backBarButtonItem =
    [[UIBarButtonItem alloc] initWithTitle:@""style:UIBarButtonItemStyleBordered target:nil action:nil];
    
	
	// Pynter på knappene
	self.skaperenKnapp.titleLabel.text = NSLocalizedString(@"omskaperen", nil);
	self.stoppeklokkeKnapp.titleLabel.text = NSLocalizedString(@"stoppeklokke", nil);
	self.delKnapp.titleLabel.text = NSLocalizedString(@"deloppskrift", nil);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)omSkaperen:(id)sender {
	
	HovedOppskriftVC *omMegVC = [[HovedOppskriftVC alloc] initWithNibName:@"HovedOppskriftVC" bundle:nil];
	
	omMegVC.bilde = [[NSBundle mainBundle] pathForResource:@"skaperen" ofType:@"jpg"];
	omMegVC.intro = NSLocalizedString(@"omskaperentekst", nil);
	omMegVC.title = NSLocalizedString(@"omskaperen", nil);
	
	[self.navigationController pushViewController:omMegVC animated:YES];
	
}
- (IBAction)skiftVeggisordbok:(id)sender {
    ForklaringViewController *ordBok = [[ForklaringViewController alloc] initWithNibName:@"ForklaringViewController" bundle:nil];
    
    [self.navigationController pushViewController:ordBok animated:YES];
    
    ordBok.textStreng = NSLocalizedString(@"ordbok", nil);
    ordBok.tittelStreng = NSLocalizedString(@"veggisordbok", nil);
}


- (IBAction)skiftDel:(id)sender {
	
	ForklaringViewController *delVC = [[ForklaringViewController alloc] initWithNibName:@"ForklaringViewController" bundle:nil];
	
	[self.navigationController pushViewController:delVC animated:YES];
    
    delVC.textStreng = @"I neste versjon av HverdagsVeggis vil det være mulig å dele dine egne oppskrifter med andre HverdagsVeggiser der ute dirkekte fra appen. Inntil da så blir jeg kjempeglad om jeg får oppskrifter sendt til gudbrandduff@gmail.com, så blir de med på neste oppdatering. På den måten kan HverdagsVeggis utfylle sin ytterste drøm; å bli en global kollaborativ bevegelse rettet mot sunn, god, enkel kjøttfri mat for alle.";
	delVC.tittelStreng = @"Del din oppskrift";

}
@end
