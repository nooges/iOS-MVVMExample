//
//  DXNStopwatchViewModel.m
//  MVVMExample
//
//  Created by Danny Nguyen on 3/23/15.
//  Copyright (c) 2015 freedom. All rights reserved.
//

#import "DXNStopwatchViewModel.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface DXNStopwatchViewModel ()

@property (nonatomic) NSTimer *stopwatchTimer;
@property (nonatomic) NSDate *startTime;
@property (nonatomic) NSTimeInterval elapsedTime;
@property (nonatomic) BOOL stopwatchRunning;

@end

@implementation DXNStopwatchViewModel

- (id)init {
    if (self = [super init]) {
        _stopwatchRunning = NO;
        _startStopButtonText = @"Start";
        _elapsedTime = 0.0;
        [self updateTimeFormat];
    }
    return self;
}

- (void)toggleStopwatch {
    if (self.stopwatchRunning) {
        [self.stopwatchTimer invalidate];
        self.stopwatchTimer = nil;
        self.stopwatchRunning = NO;
        self.startStopButtonText = @"Start";
        NSLog(@"Timer stopped");
    } else {
        // Start timer
        self.stopwatchTimer = [NSTimer scheduledTimerWithTimeInterval:1.0/100.0 target:self selector:@selector(updateTime) userInfo:nil repeats:YES];
        self.startTime = [NSDate date];
        self.stopwatchRunning = YES;
        self.startStopButtonText = @"Stop";
        NSLog(@"Timer started");
    }
}

- (void)resetStopwatch {
    self.elapsedTime = 0.0;
    [self updateTimeFormat];
    NSLog(@"Timer reset");
}

- (void)updateTime {
    NSDate *now = [NSDate date];
    NSTimeInterval timeSinceLastCheck = [now timeIntervalSinceDate:self.startTime];
    self.elapsedTime += timeSinceLastCheck;
    self.startTime = now;
    [self updateTimeFormat];
}

- (void)updateTimeFormat {
    NSDate *timeElapsedDate = [NSDate dateWithTimeIntervalSince1970:self.elapsedTime];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"mm:ss.SS"];
    self.time = [dateFormatter stringFromDate:timeElapsedDate];
}

@end
