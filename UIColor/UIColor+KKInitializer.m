//
//  UIColor+KKInitializer.m
//  KKInitializer
//
//  Created by Cocoa on 2019/1/14.
//  Copyright © 2019年 cocoa. All rights reserved.
//

#import "UIColor+KKInitializer.h"

static UIColor *kk_mainColor = nil;
static UIColor *kk_backgroundColor = nil;
static UIColor *kk_lineColor = nil;
static UIColor *kk_t1Color = nil;
static UIColor *kk_t2Color = nil;
static UIColor *kk_t3Color = nil;
static UIColor *kk_t4Color = nil;
static UIColor *kk_placeholderColor = nil;

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

+ (void)setColor_mainColor:(UIColor *)mainColor
          _backgroundColor:(UIColor *)backgroundColor
                _lineColor:(UIColor *)lineColor
                  _t1Color:(UIColor *)t1Color
                  _t2Color:(UIColor *)t2Color
                  _t3Color:(UIColor *)t3Color
         _placeholderColor:(UIColor *)placeholderColor {
    @synchronized (self) {
        
        kk_mainColor = mainColor;
        kk_backgroundColor = backgroundColor;
        kk_lineColor = lineColor;
        kk_t1Color = mainColor;
        kk_t2Color = t2Color;
        kk_t3Color = t3Color;
        kk_placeholderColor = placeholderColor;
    }
}

///  背景色
+ (UIColor *)k_backgroundColor {
    return kk_backgroundColor ?: [UIColor whiteColor];
}
///  线条颜色
+ (UIColor *)k_lineColor {
    return kk_lineColor ?: UIColor.lightGrayColor;
}
///  主色调
+ (UIColor *)k_mainColor {
    return kk_mainColor ?: UIColor.blueColor;
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
+ (UIColor *)k_placeholderColor {
    return kk_placeholderColor ?: [UIColor lightGrayColor];
}
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
+ (UIColor *)kRandomColor {
    CGFloat r = arc4random() % 256 / 255.f;
    CGFloat g = arc4random() % 256 / 255.f;
    CGFloat b = arc4random() % 256 / 255.f;
    return UIColor.k_RGBColor(r,g,b);
}

@end
