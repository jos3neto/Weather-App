//
//  CityData.h
//  Weather
//
//  Created by Jose on 21/11/17.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CityData : NSObject

@property NSInteger temperature;
@property NSInteger windchill;
-(instancetype) initWithTemperature:(NSInteger)temp AndWindchill:(NSInteger)windchill;

@end
