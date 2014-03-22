//
//  VeggisOppskrift.h
//  HverdagsVeggis
//
//  Created by Gudband Tandberg on 5/16/13.
//  Copyright (c) 2013 Gudband Tandberg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VeggisOppskrift : NSObject

@property (nonatomic, strong) NSString *bilde;
@property (nonatomic, weak) NSString *fremgangsmaate;
@property (nonatomic, weak) NSString *navn;
@property NSMutableArray *ingredienser;
@property NSString *intro;
@property int antPers;

- (id) initWithBilde:(NSString *)bilde fremgangsmaate: (NSString *)
fremgangsmaate navn:(NSString *) navn ingredienser: (NSString *)
ingredienser intro:(NSString *)intro antpers: (int)antPers;


@end
