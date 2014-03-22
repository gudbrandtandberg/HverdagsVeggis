//
//  IngrediensVD.h
//  HverdagsVeggis
//
//  Created by Gudband Tandberg on 5/22/13.
//  Copyright (c) 2013 Gudband Tandberg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IngrediensVC : UIViewController <UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITableView *ingrediensTabell;
@property (weak, nonatomic) IBOutlet UITextField *antPersTextField;
@property NSNumber *antPers;
@property (weak, nonatomic) NSArray *ingredienser;
@property (weak, nonatomic) NSNumber *startAntall;
@end
