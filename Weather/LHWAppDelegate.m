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
    
    // Your code goes here
    // Don't forget to assign the window a rootViewController
    
    UITabBarController* tabBar = [[UITabBarController alloc] init];
    self.window.rootViewController = tabBar;
    
    CityData* toronto = [[CityData alloc] initWithTemperature:10 AndWindchill:5];
    CityData* seattle = [[CityData alloc] initWithTemperature:28 AndWindchill:25];
    CityData* atlanta = [[CityData alloc] initWithTemperature:5 AndWindchill:0];
    CityData* brisbane = [[CityData alloc] initWithTemperature:-3 AndWindchill:-8];
    CityData* london = [[CityData alloc] initWithTemperature:25 AndWindchill:20];
    
    MasterViewController* torontoVC = [[MasterViewController alloc]init];
    torontoVC.cityData = toronto;
    torontoVC.title = @"Toronto";
    UINavigationController* nav1 = [[UINavigationController alloc]initWithRootViewController:torontoVC];
    
    MasterViewController* seattleVC = [[MasterViewController alloc]init];
    seattleVC.cityData = seattle;
    seattleVC.title = @"Seattle";
    UINavigationController* nav2 = [[UINavigationController alloc]initWithRootViewController:seattleVC];
    
    MasterViewController* atlantaVC = [[MasterViewController alloc]init];
    atlantaVC.cityData = atlanta;
    atlantaVC.title = @"Atlanta";
    UINavigationController* nav3 = [[UINavigationController alloc]initWithRootViewController:atlantaVC];
    
    MasterViewController* brisbaneVC = [[MasterViewController alloc]init];
    brisbaneVC.cityData = brisbane;
    brisbaneVC.title = @"Brisbane";
    UINavigationController* nav4 = [[UINavigationController alloc]initWithRootViewController:brisbaneVC];
    
    MasterViewController* londonVC = [[MasterViewController alloc]init];
    londonVC.cityData = london;
    londonVC.title = @"London";
    UINavigationController* nav5 = [[UINavigationController alloc]initWithRootViewController:londonVC];
    
    tabBar.viewControllers = @[nav1,nav2,nav3,nav4,nav5];
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
