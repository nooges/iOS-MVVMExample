//
//  DXNMasterViewModel.m
//  MVVMExample
//
//  Created by Danny Nguyen on 3/23/15.
//  Copyright (c) 2015 freedom. All rights reserved.
//

#import "DXNMasterViewModel.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface DXNMasterViewModel ()

@property (nonatomic) NSTimer *clockTimer;

@end

@implementation DXNMasterViewModel

- (id)init {
    if (self = [super init]) {
        // Start timer
        _clockTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTime) userInfo:nil repeats:YES];
        [self updateTime];
    }
    return self;
}

- (void)updateTime {
    NSDate *now = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
    self.time = [dateFormatter stringFromDate:now];
}

@end
