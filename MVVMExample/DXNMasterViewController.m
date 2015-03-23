//
//  ViewController.m
//  MVVMExample
//
//  Created by Danny Nguyen on 3/23/15.
//  Copyright (c) 2015 freedom. All rights reserved.
//

#import "DXNMasterViewController.h"
#import "DXNMasterViewModel.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface DXNMasterViewController ()

@property (nonatomic) DXNMasterViewModel *viewModel;

@end

@implementation DXNMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.viewModel = [[DXNMasterViewModel alloc] init];
    RAC(self.timeLabel, text) = RACObserve(self.viewModel, time);
    [self.switchToStopwatchButton addTarget:self action:@selector(switchToStopwatch) forControlEvents:UIControlEventTouchUpInside];
}

- (void)switchToStopwatch {
    //[self push]
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
