//
//  ViewController.m
//  Example
//
//  Created by J on 2017/8/2.
//  Copyright © 2017年 J. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+Sheet.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self sheetWithItems:@[@"1",@"2",@"3"] andHandler:^(NSInteger index) {
        
    } andCompletionBlock:^(UIView *view, BOOL isFinish) {
        
    } andHiddenBlock:^(UIView *view, BOOL isFinish) {
        
    }];
}





@end
