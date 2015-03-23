//
//  DXNStopwatchViewController.h
//  MVVMExample
//
//  Created by Danny Nguyen on 3/23/15.
//  Copyright (c) 2015 freedom. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DXNStopwatchViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UIButton *startStopButton;
@property (weak, nonatomic) IBOutlet UIButton *resetButton;
@property (weak, nonatomic) IBOutlet UIButton *switchToClockButton;

@end
