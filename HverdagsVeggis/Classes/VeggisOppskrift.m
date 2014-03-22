//
//  VeggisOppskrift.m
//  HverdagsVeggis
//
//  Created by Gudband Tandberg on 5/16/13.
//  Copyright (c) 2013 Gudband Tandberg. All rights reserved.
//

#import "VeggisOppskrift.h"

@implementation VeggisOppskrift

- (id) initWithBilde:(NSString *)bilde fremgangsmaate: (NSString *)
fremgangsmaate navn:(NSString *)navn ingredienser:(NSString *)ing intro: (NSString *)intro antpers: (int)antPers

{
	self = [super init];
	
	if (self) {
		
		NSArray *ingSpl = [ing componentsSeparatedByString:@", "];
		
		NSMutableArray *ingrediensene = [[NSMutableArray alloc] init];
		
		for (int i = 0; i < ingSpl.count; i = i+3){
			
			NSString *enhet;
			
			if ([[ingSpl objectAtIndex:i+2] isEqualToString:@"nil"]){
				enhet = @"";
			}
			else{
				enhet = [NSString stringWithFormat:@"%@%@", @" ", [ingSpl objectAtIndex:i+2]];
			}
			
			[ingrediensene addObject:@[[ingSpl objectAtIndex:i],
			 [ingSpl objectAtIndex:i+1], enhet]];
		}

		self.antPers = antPers;
		self.intro = intro;
		self.ingredienser = ingrediensene;
		self.bilde = bilde;
		self.fremgangsmaate = fremgangsmaate;
		self.navn = navn;
		return self;
	}
	return nil;
	
}

@end
