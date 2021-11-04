//
//  PsZRTLHelper.m
//  YKBong
//
//  Created by HUANGCHENG on 2021/4/28.
//  Copyright © 2021 YKBong. All rights reserved.
//

#import "PsZRTLHelper.h"

@implementation PsZRTLHelper

+ (CGRect)rtl_flipRect:(CGRect)targetRect bySuperRect:(CGRect)superRect
{
    if ([[NSLocale preferredLanguages].firstObject hasPrefix:@"ar"]) {
        CGRect rect = targetRect;
        if (superRect.size.width == [UIScreen mainScreen].bounds.size.width) {
            CGFloat x = [UIScreen mainScreen].bounds.size.width - rect.origin.x - rect.size.width;
            CGFloat y = rect.origin.y;
            CGFloat width = rect.size.width;
            CGFloat height = rect.size.height;
            rect = CGRectMake(x, y, width, height);
        } else {
            CGFloat x = superRect.size.width - rect.origin.x - rect.size.width;
            CGFloat y = rect.origin.y;
            CGFloat width = rect.size.width;
            CGFloat height = rect.size.height;
            rect = CGRectMake(x, y, width, height);
        }
        return rect;
    }
    return targetRect;
}

+ (CGFloat)rtl_flipOriginX:(CGFloat)originX width:(CGFloat)width bySuperWidth:(CGFloat)superWidth
{
    if ([[NSLocale preferredLanguages].firstObject hasPrefix:@"ar"]) {
        return superWidth - originX - width;
    }
    return originX;
}

@end
