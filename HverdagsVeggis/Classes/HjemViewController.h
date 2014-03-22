//
//  HjemViewController.h
//  HverdagsVeggis
//
//  Created by Gudband Tandberg on 5/15/13.
//  Copyright (c) 2013 Gudband Tandberg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HjemViewController : UIViewController

- (IBAction)hva:(id)sender;
- (IBAction)hvordan:(id)sender;
- (IBAction)ekstra:(id)sender;


@property (weak, nonatomic) IBOutlet UIImageView *bakgrunn;
@property (weak, nonatomic) IBOutlet UIButton *knapp1;
@property (weak, nonatomic) IBOutlet UIButton *knapp2;
@property (weak, nonatomic) IBOutlet UIButton *knapp3;


@end
