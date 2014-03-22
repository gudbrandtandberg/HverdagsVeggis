//
//  AlleOppskriftene.h
//  HverdagsVeggis
//
//  Created by Gudband Tandberg on 5/16/13.
//  Copyright (c) 2013 Gudband Tandberg. All rights reserved.
//

#import <Foundation/Foundation.h>

//@class VeggisOppskrift;

//Dette er DataControlleren i appen. *alleOppskriftene er en array med alle
//oppskriftene.

@interface AlleOppskrifteneDataController : NSObject

@property (nonatomic, copy) NSArray *masterOppskriftListe;

-(id) initMedOppskrifter;

@end
