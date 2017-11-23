//
//  CityData.m
//  Weather
//
//  Created by Jose on 21/11/17.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "CityData.h"

@implementation CityData

-(instancetype) initWithTemperature:(NSInteger)temp AndWindchill:(NSInteger)windchill;
    {
        self = [super init];
        if (self) {
            _temperature = temp;
            _windchill = windchill;
        }
        return self;
    }
@end
