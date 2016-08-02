//
//  ScoreReportViewController.m
//  UIBezierPathCharts
//
//  Created by Vamsi Kallepalli on 7/27/16.
//  Copyright © 2016 Vamsi Kallepalli. All rights reserved.
//

#import "ScoreReportViewController.h"

@interface ScoreReportViewController ()

@end

@implementation ScoreReportViewController
@synthesize scoreArc;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)dismissView:(id)sender{
    
    [self dismissViewControllerAnimated:NO completion:nil];
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
