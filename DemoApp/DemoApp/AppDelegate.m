//
//  AppDelegate.m
//  DemoApp
//
//  Copyright (c) 2015 Smooch Technologies. All rights reserved.
//

#import "AppDelegate.h"
#import <Smooch/Smooch.h>
#import "MainViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    MainViewController* mainController = [[MainViewController alloc] init];

    self.window.rootViewController = mainController;
    [self.window makeKeyAndVisible];

    //This is where you would put your integrationId that was generated for your app on the Sunshine Conversations console website.
    SKTSettings *settings = [SKTSettings settingsWithIntegrationId: @""];
    settings.conversationAccentColor = [UIColor colorWithRed:145.0/255 green:45.0/255 blue:141.0/255 alpha:1.0];
    [Smooch initWithSettings:settings completionHandler:nil];

    [Smooch setUserFirstName:@"Demo" lastName:@"App"];

    return YES;
}

@end
