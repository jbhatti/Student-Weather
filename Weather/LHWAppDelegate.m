//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"

@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    // Your code goes here
    City *vancouver = [[City alloc] init];
    vancouver.temperature = 17;
    vancouver.city = @"Vancouver";
    vancouver.condition = @"Rainy";
    
    City *miami = [[City alloc] init];
    miami.temperature = 25;
    miami.city = @"Miami";
    miami.condition = @"Sunny";
    
    City *tokyo = [[City alloc] init];
    tokyo.temperature = 20;
    tokyo.city = @"Tokyo";
    tokyo.condition = @"Windy";
    
    City *london = [[City alloc] init];
    london.temperature = 15;
    london.city = @"London";
    london.condition = @"Fog";
    
    City *johannesberg = [[City alloc] init];
    johannesberg.temperature = 28;
    johannesberg.city = @"Johannesberg";
    johannesberg.condition = @"Hot";
    
    CityViewController *vancouverVC = [[CityViewController alloc] init];
    vancouverVC.city = vancouver;
    vancouverVC.view.backgroundColor = [UIColor blueColor];
    
    CityViewController *miamiVC = [[CityViewController alloc] init];
    miamiVC.city = miami;
    miamiVC.view.backgroundColor = [UIColor redColor];
    
    CityViewController *tokyoVC = [[CityViewController alloc] init];
    tokyoVC.city = tokyo;
    tokyoVC.view.backgroundColor = [UIColor orangeColor];
    
    CityViewController *londonVC = [[CityViewController alloc] init];
    londonVC.city = london;
    londonVC.view.backgroundColor = [UIColor purpleColor];
    
    CityViewController *johannesbergVC = [[CityViewController alloc] init];
    johannesbergVC.city = johannesberg;
    johannesbergVC.view.backgroundColor = [UIColor greenColor];
    
    UINavigationController* navigationController1 = [[UINavigationController alloc] initWithRootViewController:vancouverVC];
    UINavigationController* navigationController2 = [[UINavigationController alloc] initWithRootViewController:miamiVC];
    UINavigationController* navigationController3 = [[UINavigationController alloc] initWithRootViewController:tokyoVC];
    UINavigationController* navigationController4 = [[UINavigationController alloc] initWithRootViewController:londonVC];
    UINavigationController* navigationController5 = [[UINavigationController alloc] initWithRootViewController:johannesbergVC];
    
    NSArray* controllers = @[navigationController1 , navigationController2, navigationController3, navigationController4, navigationController5];
    
    tabBarController.viewControllers = controllers;
    
    UITabBarItem *tabTitle = [[UITabBarItem alloc] initWithTitle:@"Vancouver" image:nil tag:0];
    [tabTitle setTitle:@"Vancouver"];
    
    
    // Don't forget to assign the window a rootViewController
    
    
    [self.window setRootViewController:tabBarController];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
