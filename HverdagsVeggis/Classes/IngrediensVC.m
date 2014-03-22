//
//  IngrediensVD.m
//  HverdagsVeggis
//
//  Created by Gudband Tandberg on 5/22/13.
//  Copyright (c) 2013 Gudband Tandberg. All rights reserved.
//

#import "IngrediensVC.h"
#import <QuartzCore/QuartzCore.h>

@interface IngrediensVC ()

@end

@implementation IngrediensVC

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	self.antPersTextField.text = [NSString stringWithFormat:@"%@", self.antPers];
	self.ingrediensTabell.layer.cornerRadius=5;
	
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {

	[theTextField resignFirstResponder];
	self.antPers = [[NSNumber alloc] initWithInteger:[theTextField.text integerValue]];
	[self.ingrediensTabell reloadData];
    return YES;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.ingredienser.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Pynter på cellen
	
	NSString *vare = [[NSString alloc] initWithString:[[self.ingredienser objectAtIndex:indexPath.row] objectAtIndex:0]];
	NSString *stdAnt = [[NSString alloc] initWithString:[[self.ingredienser objectAtIndex:indexPath.row] objectAtIndex:1]];
	
    
    NSNumber *antall = [NSNumber alloc];
    if (self.startAntall == self.antPers){
        antall = [NSNumber numberWithFloat:[stdAnt floatValue]];
    }
    else{
        antall = [[NSNumber alloc] initWithFloat:((1/[self.startAntall floatValue])*[stdAnt floatValue]*[self.antPers floatValue])];
    }
    
	NSString *enhet;
	enhet = [[NSString alloc] initWithString:[[self.ingredienser objectAtIndex:indexPath.row] objectAtIndex:2]];
	
    NSNumberFormatter *fmt = [[NSNumberFormatter alloc] init];
    [fmt setMaximumFractionDigits:2];
    [fmt setNumberStyle:NSNumberFormatterDecimalStyle];
    
	NSString *ing = [[NSString alloc] initWithFormat:@"%@%@%@%@", [fmt stringFromNumber:antall], enhet, @" ", vare];
	
	cell.textLabel.text = ing;
    cell.backgroundColor = [UIColor colorWithRed:221./255 green:214./255. blue:140./255 alpha:1.];
	[cell setUserInteractionEnabled:NO];
	
    return cell;
}


@end
