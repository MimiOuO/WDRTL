//
//  PsZRTLHelper.h
//  YKBong
//
//  Created by HUANGCHENG on 2021/4/28.
//  Copyright © 2021 YKBong. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
#define kSZOScreenBounds [UIScreen mainScreen].bounds

#define RTLFlipRectScreenBy(targetRect) [PsZRTLHelper rtl_flipRect:targetRect bySuperRect:kSZOScreenBounds]

#define RTLFlipRectBy(targetRect, superRect) [PsZRTLHelper rtl_flipRect:targetRect bySuperRect:superRect]

@interface PsZRTLHelper : NSObject

+ (CGRect)rtl_flipRect:(CGRect)targetRect bySuperRect:(CGRect)superRect;

+ (CGFloat)rtl_flipOriginX:(CGFloat)originX width:(CGFloat)width bySuperWidth:(CGFloat)superWidth;

@end

NS_ASSUME_NONNULL_END
