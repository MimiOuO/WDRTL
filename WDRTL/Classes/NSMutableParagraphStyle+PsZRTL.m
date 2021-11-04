//
//  NSMutableParagraphStyle+PsZRTL.m
//  YKBong
//
//  Created by HUANGCHENG on 2021/4/28.
//  Copyright © 2021 YKBong. All rights reserved.
//

#import "NSMutableParagraphStyle+PsZRTL.h"

@implementation NSMutableParagraphStyle (PsZRTL)

+ (void)load
{
    Method old_1 = class_getInstanceMethod(self, @selector(setAlignment:));
    Method new_1 = class_getInstanceMethod(self, @selector(rtl_setAlignment:));
    method_exchangeImplementations(old_1, new_1);
}

- (void)rtl_setAlignment:(NSTextAlignment)alignment
{
    if (isRTL()) {
        if (alignment == NSTextAlignmentLeft || alignment == NSTextAlignmentNatural) {
            alignment = NSTextAlignmentRight;
        } else if (alignment == NSTextAlignmentRight) {
            alignment = NSTextAlignmentLeft;
        } else if(alignment == NSTextAlignmentJustified){
            alignment = NSTextAlignmentLeft;
        }
    }
    [self rtl_setAlignment:alignment];
}

@end
