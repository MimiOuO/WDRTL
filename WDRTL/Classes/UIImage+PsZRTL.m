//
//  UIImage+PsZRTL.m
//  YKBong
//
//  Created by HUANGCHENG on 2021/4/28.
//  Copyright © 2021 YKBong. All rights reserved.
//

#import "UIImage+PsZRTL.h"

@implementation UIImage (PsZRTL)

- (UIImage *)rtl_imageFlippedForRightToLeft
{
    if ([[NSLocale preferredLanguages].firstObject hasPrefix:@"ar"]) {
        return [UIImage imageWithCGImage:self.CGImage
                                   scale:self.scale
                             orientation:UIImageOrientationUpMirrored];
    }
    return self;
}

@end
