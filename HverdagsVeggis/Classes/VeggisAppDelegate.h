//
//  VeggisAppDelegate.h
//  HverdagsVeggis
//
//  Created by Gudband Tandberg on 5/15/13.
//  Copyright (c) 2013 Gudband Tandberg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VeggisAppDelegate : UIResponder
	<UIApplicationDelegate, UITabBarControllerDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UITabBarController *tabBarController;

@end
