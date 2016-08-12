//
//  sqliteDemoAppDelegate.h
//  sqliteDemo
//
//  Created by vikrant mhaske on 10/01/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//

#import <UIKit/UIKit.h>

@class sqliteDemoViewController;

@interface sqliteDemoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    sqliteDemoViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet sqliteDemoViewController *viewController;

@end

