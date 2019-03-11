//
//  UIColor+KKInitializer.m
//  KKInitializer
//
//  Created by Cocoa on 2019/1/14.
//  Copyright © 2019年 cocoa. All rights reserved.
//

#import "UIColor+KKInitializer.h"

static UIColor *kk_t1Color = nil;
static UIColor *kk_t2Color = nil;
static UIColor *kk_t3Color = nil;
static UIColor *kk_t4Color = nil;

@implementation UIColor (KKInitializer)

+ (void)setTextColor_mainColor:(UIColor *)mainColor
                  _secondColor:(UIColor *)secondColor
                   _thirdColor:(UIColor *)thirdColor
             _placeholderColor:(UIColor *)placeholderColor {
    @synchronized (self) {
        kk_t1Color = mainColor;
        kk_t2Color = secondColor;
        kk_t3Color = thirdColor;
        kk_t4Color = placeholderColor;
    }
}

///  文本主要颜色 default: Black
+ (UIColor *)k_t1Color {
    return kk_t1Color ?: [UIColor blackColor];
}
///  文本次要颜色 default: darkGray
+ (UIColor *)k_t2Color {
    return kk_t2Color ?: [UIColor darkGrayColor];
}
///  文本三级颜色 default: Gray
+ (UIColor *)k_t3Color {
    return kk_t3Color ?: [UIColor grayColor];
}
///  占位符颜色   default: lightGray
+ (UIColor *)k_t4Color {
    return kk_t4Color ?: [UIColor lightGrayColor];
}

+ (UIColor *(^)(CGFloat, CGFloat, CGFloat))k_RGBColor {
    return ^id(CGFloat r, CGFloat g, CGFloat b) {
        return UIColor.k_RGBAColor(r,g,b,1.0f);
    };
}
+ (UIColor *(^)(CGFloat, CGFloat, CGFloat, CGFloat))k_RGBAColor {
    return ^id(CGFloat r, CGFloat g, CGFloat b, CGFloat a) {
        return [[UIColor alloc] initWithRed:r green:g blue:b alpha:a];
    };
}
+ (UIColor *(^)(NSInteger))k_hexColor {
    return ^id(NSInteger hex) {
        CGFloat r = (((hex) & 0xFF0000) >> 16) / 255.0f;
        CGFloat g = ((hex & 0xFF00) >> 8) / 255.0f;
        CGFloat b = (hex & 0xFF) / 255.0f;
        return UIColor.k_RGBColor(r,g,b);
    };
}
+ (UIColor *(^)(void))k_randomColor {
    return ^id() {
      
        CGFloat r = arc4random() % 256 / 255.f;
        CGFloat g = arc4random() % 256 / 255.f;
        CGFloat b = arc4random() % 256 / 255.f;
        return UIColor.k_RGBColor(r,g,b);
    };
}

@end
