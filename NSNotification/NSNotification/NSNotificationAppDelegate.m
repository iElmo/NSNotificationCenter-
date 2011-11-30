//
//  NSNotificationAppDelegate.m
//  NSNotification
//
//  Created by Dan on 16/11/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NSNotificationAppDelegate.h"

@implementation NSNotificationAppDelegate


@synthesize window=_window;
@synthesize viewController1;
@synthesize viewController2;
@synthesize tabs_array;
@synthesize main_tab;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

    main_tab = [[UITabBarController alloc] init];
    
    viewController1 = [[FirstView alloc] init];
    viewController1.title = @"First View";
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:viewController1];
    [viewController1 release];
    
    viewController2 = [[SecondView alloc] init];
    viewController2.title = @"Second View";
    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:viewController2];
    [viewController2 release];
    
    tabs_array = [[NSArray alloc] initWithObjects:nav1, nav2, nil];
    main_tab.viewControllers = tabs_array;
    
    [self.window addSubview:main_tab.view];
    [self.window makeKeyAndVisible];
    [nav1 release];
    [nav2 release];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [tabs_array release];
    [main_tab release];
    [_window release];
    [super dealloc];
}

@end
