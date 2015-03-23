//
//  DXNStopwatchViewController.m
//  MVVMExample
//
//  Created by Danny Nguyen on 3/23/15.
//  Copyright (c) 2015 freedom. All rights reserved.
//

#import "DXNStopwatchViewController.h"
#import "DXNStopwatchViewModel.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface DXNStopwatchViewController ()

@property (nonatomic) DXNStopwatchViewModel *viewModel;

@end

@implementation DXNStopwatchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.viewModel = [[DXNStopwatchViewModel alloc] init];
    RAC(self.timeLabel, text) = RACObserve(self.viewModel, time);
    [self.startStopButton addTarget:self.viewModel action:@selector(toggleStopwatch) forControlEvents:UIControlEventTouchUpInside];
    [self.resetButton addTarget:self.viewModel action:@selector(resetStopwatch) forControlEvents:UIControlEventTouchUpInside];
    [self.switchToClockButton addTarget:self action:@selector(dismiss) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)dismiss {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
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
