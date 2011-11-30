//
//  NSNotificationAppDelegate.h
//  NSNotification
//
//  Created by Dan on 16/11/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstView.h"
#import "SecondView.h"

@interface NSNotificationAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) FirstView *viewController1;
@property (nonatomic, retain) SecondView *viewController2;
@property (nonatomic, retain) UITabBarController *main_tab;
@property (nonatomic, retain) NSArray *tabs_array;

@end
