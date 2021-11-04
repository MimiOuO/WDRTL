//
//  UISwipeGestureRecognizer+PsZRTL.m
//  YKBong
//
//  Created by HUANGCHENG on 2021/4/28.
//  Copyright © 2021 YKBong. All rights reserved.
//

#import "UISwipeGestureRecognizer+PsZRTL.h"

@implementation UISwipeGestureRecognizer (PsZRTL)

+ (void)load
{
    Method old_1 = class_getInstanceMethod(self, @selector(setDirection:));
    Method new_1 = class_getInstanceMethod(self, @selector(rtl_setDirection:));
    method_exchangeImplementations(old_1, new_1);
}

- (void)rtl_setDirection:(UISwipeGestureRecognizerDirection)direction
{
    if (isRTL()) {
        if (direction == UISwipeGestureRecognizerDirectionRight) {
            direction = UISwipeGestureRecognizerDirectionLeft;
        } else if (direction == UISwipeGestureRecognizerDirectionLeft) {
            direction = UISwipeGestureRecognizerDirectionRight;
        }
    }
    [self rtl_setDirection:direction];
}

@end
