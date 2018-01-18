//
//  UIViewController+Progress.m
//  Example
//
//  Created by J on 2018/1/17.
//  Copyright © 2018年 J. All rights reserved.
//

#import "UIViewController+Progress.h"
#import "MHPopProgressView.h"

@implementation UIViewController (Progress)
-(void)showProgress {
    [[MHPopProgressView sharedInstance]showWithConfig:^MHPopProgressViewConfig *(MHPopProgressViewConfig *config) {
        return config;
    }];
    [self show];
}
-(void)show{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        for (int progress = 0; progress<=100; progress++) {
            [MHPopProgressView sharedInstance].MHPopProgressViewProgress(progress/100.0);
            sleep(1.0);
        }
    });
}
@end
