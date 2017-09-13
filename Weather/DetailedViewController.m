//
//  DetailedViewController.m
//  Weather
//
//  Created by Jaison Bhatti on 2017-09-13.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "DetailedViewController.h"

@interface DetailedViewController ()

@end

@implementation DetailedViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor clearColor];
    
    UILabel *cityTemp = [[UILabel alloc] initWithFrame:CGRectZero];
    cityTemp.frame = CGRectMake(100.0, 100.0, 100.0, 100.0);
    cityTemp.text = [NSString stringWithFormat:@"Temp: %li", (long)self.city.temperature];
    cityTemp.textColor = [UIColor whiteColor];
    [self.view addSubview:cityTemp];
    cityTemp.center = self.view.center;
    [cityTemp sizeToFit];
    
    UILabel *cityCondition = [[UILabel alloc] initWithFrame:CGRectZero];
    cityCondition.frame = CGRectMake(10.0, 150.0, 100.0, 100.0);
    cityCondition.text = [NSString stringWithFormat:@"Condition: %@", self.city.condition];
    cityCondition.textColor = [UIColor whiteColor];
    [self.view addSubview:cityCondition];
    cityCondition.center = self.view.center;
    [cityCondition sizeToFit];
    
}



@end
