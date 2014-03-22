//
//  ForklaringViewController.h
//  HverdagsVeggis
//
//  Created by Gudband Tandberg on 5/15/13.
//  Copyright (c) 2013 Gudband Tandberg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ForklaringViewController : UIViewController

@property (nonatomic, retain) IBOutlet UITextView *textFelt;
@property (weak, nonatomic) NSString *textStreng;
@property (weak, nonatomic) NSString *tittelStreng;


@end
