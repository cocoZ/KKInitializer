//
//  UIColor+KKInitializer.h
//  KKInitializer
//
//  Created by Cocoa on 2019/1/14.
//  Copyright © 2019年 cocoa. All rights reserved.
//

#import <UIKit/UIKit.h>

/////  文本主要颜色 defa
//extern UIColor *kk_t1Color;
//extern UIColor *kk_t2Color;
//extern UIColor *kk_t3Color;
//extern UIColor *kk_t4Color;

/**
 *  1. 根据r、g、b 生成UIColor
 *  2. 根据r、g、b、a 生成UIColor
 *  3. 根据16进制色值 生成UIColor
 *  4. 生成随机色
 *
 *
 *  全局静态颜色
 *  1. 文本主要颜色
 *  2. 文本次要颜色
 *  3. 文本三级颜色
 *  4. 文本占位符颜色
 *  5. 主色调
 *  6. 全局背景色
 *  7. 线条颜色
 */
@interface UIColor (KKInitializer)


+ (void)setTextColor_mainColor:(UIColor *)mainColor
                  _secondColor:(UIColor *)secondColor
                   _thirdColor:(UIColor *)thirdColor
             _placeholderColor:(UIColor *)placeholderColor DEPRECATED_MSG_ATTRIBUTE("弃用");

+ (void)setColor_mainColor:(UIColor *)mainColor
          _backgroundColor:(UIColor *)backgroundColor
                _lineColor:(UIColor *)lineColor
                  _t1Color:(UIColor *)t1Color
                  _t2Color:(UIColor *)t2Color
                  _t3Color:(UIColor *)t3Color
         _placeholderColor:(UIColor *)placeholderColor;


///  文本主要颜色 default: Black
+ (UIColor *)k_t1Color;
///  文本次要颜色 default: darkGray
+ (UIColor *)k_t2Color;
///  文本三级颜色 default: Gray
+ (UIColor *)k_t3Color;
///  占位符颜色   default: lightGray
+ (UIColor *)k_placeholderColor;
+ (UIColor *)k_t4Color DEPRECATED_MSG_ATTRIBUTE("弃用, 请使用 k_placeholderColor");


///  背景色 default White
+ (UIColor *)k_backgroundColor;
///  线条颜色 default: lightGray
+ (UIColor *)k_lineColor;
///  主色调 default: blue
+ (UIColor *)k_mainColor;


+ (UIColor *(^)(CGFloat r, CGFloat g, CGFloat b))k_RGBColor;
+ (UIColor *(^)(CGFloat r, CGFloat g, CGFloat b, CGFloat a))k_RGBAColor;
//  0xFFFFFF
+ (UIColor *(^)(NSInteger hexValue))k_hexColor;
+ (UIColor *(^)(void))k_randomColor DEPRECATED_MSG_ATTRIBUTE("弃用, 请使用 kRandomColor");
+ (UIColor *)kRandomColor;


@end
