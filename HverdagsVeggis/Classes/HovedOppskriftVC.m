//
//  HovedOppskriftVC.m
//  HverdagsVeggis
//
//  Created by Gudband Tandberg on 5/22/13.
//  Copyright (c) 2013 Gudband Tandberg. All rights reserved.
//

#import "HovedOppskriftVC.h"
#import <QuartzCore/QuartzCore.h>

@interface HovedOppskriftVC ()

@end

@implementation HovedOppskriftVC

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
	self.oppskriftBilde.image = [UIImage imageWithContentsOfFile:self.bilde];
	self.oppskriftIntro.text = self.intro;
	self.oppskriftIntro.layer.cornerRadius = 5;
	self.oppskriftBilde.layer.cornerRadius = 5;
	self.oppskriftBilde.layer.masksToBounds = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
