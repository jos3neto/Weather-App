//
//  MasterViewController.m
//  Weather
//
//  Created by Jose on 21/11/17.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "MasterViewController.h"

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    
    UIBarButtonItem* button = [[UIBarButtonItem alloc] initWithTitle:@"Details" style:UIBarButtonItemStylePlain target:self action:@selector(buttonTapped:)];
    
    self.navigationItem.rightBarButtonItem = button;
}

-(void) buttonTapped:(UIBarButtonItem*) sender {
    DetailViewController* detailVC = [[DetailViewController alloc] init];
    detailVC.cityData = self.cityData;
    
    [self.navigationController pushViewController:detailVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
