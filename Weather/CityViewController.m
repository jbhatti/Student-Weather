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
    
    DetailedViewController * detailedVC = [[DetailedViewController alloc] init];
    detailedVC.city = self.city;
    [self.navigationController pushViewController:detailedVC animated:YES];
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self showWeatherDetails];
    
    // add a barbuttonItem to the self.navigationItem.rightBarButtonItem = // UIBarButtonItem
    UIBarButtonItem *showDetails = [[UIBarButtonItem alloc] initWithTitle:@"More" style:UIBarButtonItemStylePlain target:self action:@selector(showWeatherDetails)];
    self.navigationItem.rightBarButtonItem = showDetails;
    
    
}

-(void)setCity:(City *)city {
    self.title = city.city;
    _city = city;
}



@end
