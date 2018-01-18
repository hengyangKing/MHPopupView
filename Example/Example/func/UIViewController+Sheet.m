//
//  UIViewController+Sheet.m
//  Example
//
//  Created by J on 2018/1/17.
//  Copyright © 2018年 J. All rights reserved.
//

#import "UIViewController+Sheet.h"
#import "MMPopupView.h"
#import "MMSheetView.h"
@implementation UIViewController (Sheet)
-(void)sheetWithItems:(NSArray *)showItems andHandler:(void (^)(NSInteger index))handler andCompletionBlock:(void (^)(UIView *view,BOOL isFinish))completionBlock andHiddenBlock:(void(^)(UIView *view,BOOL isFinish))hiddenBlock
{
    [MMPopupView hideAll];
    [self.view endEditing:YES];
    MMPopupItemHandler block = ^(NSInteger index){
        if (handler) {
            handler(index);
        }
    };
    MMPopupCompletionBlock completeBlock = ^(MMPopupView *popupView, BOOL finished){
        if (completionBlock) {
            completionBlock(popupView,finished);
        }
    };
    NSMutableArray *items=[NSMutableArray new];
    for (int i=0; i<showItems.count; i++) {
        MMPopupItem *item=[MMPopupItem new];
        item =(i==showItems.count-1)?MMItemMake((NSString *)showItems[i], MMItemTypeHighlight, block):MMItemMake((NSString *)showItems[i], MMItemTypeNormal, block);
        
        [items addObject:item];
    }
    MMSheetView *sheetView = [[MMSheetView alloc] initWithTitle:nil items:items];
    sheetView.attachedView = self.view;
    [MMPopupWindow sharedWindow].touchWildToHide = YES;
    sheetView.attachedView.mm_dimBackgroundBlurEnabled = YES;
    sheetView.attachedView.mm_dimBackgroundBlurEffectStyle=UIBlurEffectStyleDark;
    
    [sheetView showWithBlock:completeBlock];
    sheetView.cancelButtonClickBlock=^(UIView *popView, BOOL isFinish){
        if (hiddenBlock) {
            hiddenBlock(popView,isFinish);
        }
    };
}
@end
