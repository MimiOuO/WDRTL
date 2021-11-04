//
//  UILabel+PsZRTL.m
//  YKBong
//
//  Created by HUANGCHENG on 2021/4/28.
//  Copyright © 2021 YKBong. All rights reserved.
//

#import "UILabel+PsZRTL.h"

@implementation UILabel (PsZRTL)

+ (void)load
{
//    Method old_1 = class_getInstanceMethod(self, @selector(initWithFrame:));
//    Method new_1 = class_getInstanceMethod(self, @selector(rtl_initWithFrame:));
//    method_exchangeImplementations(old_1, new_1);
    
//    Method old_2 = class_getInstanceMethod(self, @selector(setTextAlignment:));
//    Method new_2 = class_getInstanceMethod(self, @selector(rtl_setTextAlignment:));
//    method_exchangeImplementations(old_2, new_2);
    
//    Method old_3 = class_getInstanceMethod(self, @selector(setAttributedText:));
//    Method new_3 = class_getInstanceMethod(self, @selector(rtl_setAttributedText:));
//    method_exchangeImplementations(old_3, new_3);
}

#pragma mark - Methods

- (instancetype)rtl_initWithFrame:(CGRect)frame
{
    if ([self rtl_initWithFrame:frame]) {
        self.textAlignment = NSTextAlignmentNatural;
    }
    return self;
}

- (void)rtl_setTextAlignment:(NSTextAlignment)textAlignment
{
    if (isRTL()) {
        if (textAlignment == NSTextAlignmentLeft) {
            textAlignment = NSTextAlignmentRight;
        }
        if (textAlignment == NSTextAlignmentRight) {
            textAlignment = NSTextAlignmentLeft;
        }
    }
    [self rtl_setTextAlignment:textAlignment];
}

- (void)rtl_setAttributedText:(NSAttributedString *)attributedText
{
    NSAttributedString *attributeString = RTLAttributeString(attributedText);
    [self rtl_setAttributedText:attributeString];
}

#pragma mark - Private

BOOL isRTLString(NSString *string) {
    if ([string hasPrefix:@"\u202B"] || [string hasPrefix:@"\u202A"]) {
        return YES;
    }
    return NO;
}

NSString *RTLString(NSString *string) {
    if (string.length == 0 || isRTLString(string)) {
        return string;
    }
    if (isRTL()) {
        string = [@"\u202B" stringByAppendingString:string];
    } else {
        string = [@"\u202A" stringByAppendingString:string];
    }
    return string;
}

NSAttributedString *RTLAttributeString(NSAttributedString *attributeString) {
    if (attributeString.length == 0) {
        return attributeString;
    }
    NSRange range;
    NSDictionary *originAttributes = [attributeString attributesAtIndex:0 effectiveRange:&range];
    NSParagraphStyle *style = [originAttributes objectForKey:NSParagraphStyleAttributeName];

    if (style && isRTLString(attributeString.string)) {
        return attributeString;
    }
    NSMutableDictionary *attributes = originAttributes ? [originAttributes mutableCopy] : [NSMutableDictionary new];
    if (!style) {
        NSMutableParagraphStyle *mutableParagraphStyle = [[NSMutableParagraphStyle alloc] init];
        mutableParagraphStyle.alignment = NSTextAlignmentLeft;
        style = mutableParagraphStyle;
        [attributes setValue:mutableParagraphStyle forKey:NSParagraphStyleAttributeName];
    }
    NSString *string = RTLString(attributeString.string);
    return [[NSAttributedString alloc] initWithString:string attributes:attributes];
}

@end
