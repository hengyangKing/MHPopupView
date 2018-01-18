//
//  UIViewController+Sheet.h
//  Example
//
//  Created by J on 2018/1/17.
//  Copyright © 2018年 J. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface UIViewController (Sheet)

-(void)sheetWithItems:(NSArray *)showItems andHandler:(void (^)(NSInteger index))handler andCompletionBlock:(void (^)(UIView *view,BOOL isFinish))completionBlock andHiddenBlock:(void(^)(UIView *view,BOOL isFinish))hiddenBlock ;
@end
