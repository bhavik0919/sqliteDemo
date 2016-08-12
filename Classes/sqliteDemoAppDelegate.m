//
//  sqliteDemoAppDelegate.m
//  sqliteDemo
//
//  Created by vikrant mhaske on 10/01/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//

#import "sqliteDemoAppDelegate.h"
#import "sqliteDemoViewController.h"

@implementation sqliteDemoAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
