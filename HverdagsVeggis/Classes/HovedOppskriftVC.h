//
//  HovedOppskriftVC.h
//  HverdagsVeggis
//
//  Created by Gudband Tandberg on 5/22/13.
//  Copyright (c) 2013 Gudband Tandberg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HovedOppskriftVC : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *oppskriftBilde;
@property (weak, nonatomic) IBOutlet UITextView *oppskriftIntro;
@property (nonatomic, weak) NSString *intro;
@property (nonatomic, weak) NSString *bilde;
@property (nonatomic, weak) NSString *navn;


@end
