//
//  UIView+PsZNew.h
//  Peppers
//
//  Created by HUANGCHENG on 2020/2/27.
//  Copyright © 2020 HUANGCHENG. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (PsZNew)

@property (nonatomic, assign) CGSize    size;
@property (nonatomic, assign) CGFloat   x;
@property (nonatomic, assign) CGFloat   y;
@property (nonatomic, assign) CGFloat   width;
@property (nonatomic, assign) CGFloat   height;
@property (nonatomic, assign) CGFloat   centerX;
@property (nonatomic, assign) CGFloat   centerY;

#pragma mark - 简写

- (void)psz_initDataSource;
- (void)psz_initViews;
- (void)psz_bindData;
- (void)psz_updateConstraints;
- (void)psz_events;

- (void)psz_adjustView:(UIScrollView * __nullable)scrollView;

/// 视图翻转，已添加在视图上之后，才能有效重置X
- (void)rtl_resetOriginX;

/// scrollview针对RTL做翻转适配，在视图布局固定时使用
- (void)rtl_flippedSubviewsInScrollView;

/// 翻转子view
-(void)rtl_resetChildView;
//- (void)rtl_resetScrollChildView;

@end

NS_ASSUME_NONNULL_END
