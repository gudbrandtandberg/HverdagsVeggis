//
//  VeggisAppDelegate.m
//  HverdagsVeggis
//
//  Created by Gudband Tandberg on 5/15/13.
//  Copyright (c) 2013 Gudband Tandberg. All rights reserved.
//

#import "VeggisAppDelegate.h"

#import "FirstNavigationViewController.h"

#import "SecondNavigationViewController.h"

@implementation VeggisAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:
											(NSDictionary *)launchOptions
{
	
	//Lager selve vinduet i appen. Dette er hovedcontaineren for alle views. 
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	
    // Lager de to NavigationControllerne som representeres i tabBarControlleren
	UINavigationController *viewController1 =
	[[FirstNavigationViewController alloc]initWithNibName:
	 @"VeggisFirstViewController" bundle:nil];
	
	UINavigationController *viewController2 =
	[[SecondNavigationViewController alloc] initWithNibName:
	 @"VeggisSecondViewController" bundle:nil];
	
	//Lager TabBarController'en som er vår hoved-ViewController:
	self.tabBarController = [[UITabBarController alloc] init];
	self.tabBarController.viewControllers = @[viewController1, viewController2];
	
    self.tabBarController.tabBar.barTintColor = [UIColor colorWithRed:221./255 green:214/255. blue:140/255. alpha:1];
    self.tabBarController.tabBar.tintColor = [UIColor colorWithRed:69./255 green:92/255. blue:28/255. alpha:1];

	self.window.rootViewController = self.tabBarController;
	self.tabBarController.delegate = self;
    [self.window makeKeyAndVisible];
	return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
	// Sent when the application is about to move from active to inactive state.
	//This can occur for certain types of temporary interruptions (such as an
	//incoming phone call or SMS message) or when the user quits the application
	//and it begins the transition to the background state.
	// Use this method to pause ongoing tasks, disable timers,
	//and throttle down OpenGL ES frame rates.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
	// Use this method to release shared resources, save user data,
	// invalidate timers, and store enough application state information to
	// restore your application to its current state in case it is terminated
	// later. If your application supports background execution, this method
	// is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
	// Called as part of the transition from the background to the inactive
	// state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
	// Restart any tasks that were paused (or not yet started) while the
	// application was inactive. If the application was previously in the
	// background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
	// Called when the application is about to terminate. Save data if
	// appropriate. See also applicationDidEnterBackground:.
}

@end
