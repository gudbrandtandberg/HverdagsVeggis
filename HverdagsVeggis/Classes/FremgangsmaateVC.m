//
//  FremgangsmaateVC.m
//  HverdagsVeggis
//
//  Created by Gudband Tandberg on 5/22/13.
//  Copyright (c) 2013 Gudband Tandberg. All rights reserved.
//

#import "FremgangsmaateVC.h"
#import <QuartzCore/QuartzCore.h>

@interface FremgangsmaateVC ()

@end

@implementation FremgangsmaateVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
		self.fremgangTextView.text = self.maate;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.fremgangTextView.text = self.maate;
	self.fremgangTextView.layer.cornerRadius = 5;
	[self.fremgangTextView setScrollEnabled:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
