//
//  CityViewController.m
//  Weather
//
//  Created by Jaison Bhatti on 2017-09-13.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "CityViewController.h"
#import "LHWAppDelegate.h"
#import "DetailedViewController.h"

@interface CityViewController ()

@end

@implementation CityViewController


- (void) showWeatherDetails {
    
//    DetailedViewController * detailedVC = [[DetailedViewController alloc] init];
//    initialize UIViewController
//    navigate vc
    
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    UILabel *temp = [[UILabel alloc] init ];
    
    temp.text = @(self.city.temperature).stringValue;
    [self.view addSubview:temp];
    temp.center = self.view.center;
    [temp sizeToFit];
}

-(void)setCity:(City *)city {
    self.title = city.city;
    _city = city;
}



@end
