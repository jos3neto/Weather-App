//
//  DetailViewController.m
//  Weather
//
//  Created by Jose on 21/11/17.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "DetailViewController.h"

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel* label = [[UILabel alloc]initWithFrame:CGRectMake(75, 200, 200, 50)];
    label.backgroundColor =[UIColor whiteColor];
    label.text = [NSString stringWithFormat:@"    Temperature: %lddegC", self.cityData.temperature];
    
    [self.view addSubview:label];
    
    UILabel* anotherLabel = [[UILabel alloc]initWithFrame:CGRectMake(75, 300, 200, 50)];
    anotherLabel.backgroundColor =[UIColor whiteColor];
    anotherLabel.text = [NSString stringWithFormat:@"    Windchill: %ld", self.cityData.windchill];
    
    [self.view addSubview:anotherLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
