//
//  DXNStopwatchViewModel.h
//  MVVMExample
//
//  Created by Danny Nguyen on 3/23/15.
//  Copyright (c) 2015 freedom. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DXNStopwatchViewModel : NSObject

@property (nonatomic) NSString *time;
@property (nonatomic) NSString *startStopButtonText;

- (void)toggleStopwatch;
- (void)resetStopwatch;

@end
