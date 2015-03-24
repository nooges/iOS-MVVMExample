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
#import "CustomSegue.h"
#import "CustomUnwindSegue.h"

@interface DXNMasterViewController ()

@property (nonatomic) DXNMasterViewModel *viewModel;

@end

@implementation DXNMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.viewModel = [[DXNMasterViewModel alloc] init];
    RAC(self.timeLabel, text) = RACObserve(self.viewModel, time);
}

// This is the IBAction method referenced in the Storyboard Exit for the Unwind segue.
// It needs to be here to create a link for the unwind segue.
// But we'll do nothing with it.
- (IBAction)unwindFromViewController:(UIStoryboardSegue *)sender {
}

// We need to over-ride this method from UIViewController to provide a custom segue for unwinding
- (UIStoryboardSegue *)segueForUnwindingToViewController:(UIViewController *)toViewController fromViewController:(UIViewController *)fromViewController identifier:(NSString *)identifier {
    // Instantiate a new CustomUnwindSegue
    CustomUnwindSegue *segue = [[CustomUnwindSegue alloc] initWithIdentifier:identifier source:fromViewController destination:toViewController];
    return segue;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
