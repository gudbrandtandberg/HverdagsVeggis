//
//  OppskriftTabell.m
//  HverdagsVeggis
//
//  Created by Gudband Tandberg on 5/15/13.
//  Copyright (c) 2013 Gudband Tandberg. All rights reserved.
//

#import "OppskriftTabellViewController.h"
#import "OppskriftViewController.h"
#import "VeggisOppskrift.h"

@interface OppskriftTabellViewController ()
@end

@implementation OppskriftTabellViewController


- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Lager oppskriftene (med egen init metode):
		_oppskriftene = [[AlleOppskrifteneDataController alloc] init];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.title = NSLocalizedString(@"oppskrifter", nil);
	self.navigationItem.title = NSLocalizedString(@"oppskrifter", nil);
    self.navigationItem.backBarButtonItem =
    [[UIBarButtonItem alloc] initWithTitle:@""
                                      style:UIBarButtonItemStyleBordered
                                     target:nil
                                     action:nil];
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:130./255 green:255/255. blue:134/255. alpha:1];
    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:69./255 green:92./255 blue:28./255 alpha:1];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.oppskriftene.masterOppskriftListe.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return [[self.oppskriftene.masterOppskriftListe objectAtIndex:section] count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
	switch (section) {
		case 0:
			return NSLocalizedString(@"frokost", nil);
			break;
			
		case 1:
			return NSLocalizedString(@"lunsj", nil);
			break;
			
		case 2:
			return NSLocalizedString(@"middag", nil);
			break;
			
		case 3:
			return NSLocalizedString(@"dessert", nil);
			break;
			
		case 4:
			return NSLocalizedString(@"ekstra", nil);
			break;
	
		default:
			return nil;
			break;
	}
	
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView
							 dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]
			initWithStyle:UITableViewCellStyleDefault reuseIdentifier:
				CellIdentifier];
    }
    
    // Pynter på cellen:
	
	cell.textLabel.text = [[[self.oppskriftene.masterOppskriftListe objectAtIndex:
							 indexPath.section] objectAtIndex:indexPath.row] navn];
    cell.backgroundColor = [UIColor colorWithRed:221/255. green:214/255. blue:140/255. alpha:1];
	cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Lager en OppskriftViewController og pusher den
	
     OppskriftViewController *oppskriftVC = [[OppskriftViewController alloc]
											 initWithOppskrift:[[self.oppskriftene.masterOppskriftListe objectAtIndex:
												indexPath.section] objectAtIndex:indexPath.row]];

     // Sender den videre i Navigation-stacken
    
    [oppskriftVC.view setFrame:[self.view frame]];
	
	oppskriftVC.title = [[[self.oppskriftene.masterOppskriftListe objectAtIndex:
						   indexPath.section] objectAtIndex:indexPath.row] navn];
	
	[self.navigationController pushViewController:oppskriftVC animated:YES];
	
	

}

@end
