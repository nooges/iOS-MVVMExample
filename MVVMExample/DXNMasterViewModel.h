//
//  DXNMasterViewModel.h
//  MVVMExample
//
//  Created by Danny Nguyen on 3/23/15.
//  Copyright (c) 2015 freedom. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DXNMasterViewModel : NSObject

@property (nonatomic) NSString *time;

- (void)updateTime;
- (void)goToStopwatch;

@end
