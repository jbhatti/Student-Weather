//
//  City.h
//  Weather
//
//  Created by Jaison Bhatti on 2017-09-12.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

@property (nonatomic, weak) NSString* city;
@property (nonatomic) NSInteger temperature;
@property (nonatomic, weak) NSString* condition;


@end
