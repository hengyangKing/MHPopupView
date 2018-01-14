//
//  ViewController.m
//  Example
//
//  Created by J on 2017/8/2.
//  Copyright © 2017年 J. All rights reserved.
//

#import "ViewController.h"
#import "MHPopProgressView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[MHPopProgressView sharedInstance]showWithConfig:^MHPopProgressViewConfig *(MHPopProgressViewConfig *config) {
        return config;
    }];
    [self show];
    
}
-(void)show{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        for (int progress = 0; progress<=100; progress++) {
            [MHPopProgressView sharedInstance].MHPopProgressViewProgress(progress/100.0);
            sleep;
        }
    });
}




@end
