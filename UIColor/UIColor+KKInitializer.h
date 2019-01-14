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
 */
@interface UIColor (KKInitializer)


+ (void)setTextColor_mainColor:(UIColor *)mainColor
                  _secondColor:(UIColor *)secondColor
                   _thirdColor:(UIColor *)thirdColor
             _placeholderColor:(UIColor *)placeholderColor;


///  文本主要颜色 default: Black
+ (UIColor *)k_t1Color;
///  文本次要颜色 default: darkGray
+ (UIColor *)k_t2Color;
///  文本三级颜色 default: Gray
+ (UIColor *)k_t3Color;
///  占位符颜色   default: lightGray
+ (UIColor *)k_t4Color;

+ (UIColor *(^)(CGFloat r, CGFloat g, CGFloat b))k_RGBColor;
+ (UIColor *(^)(CGFloat r, CGFloat g, CGFloat b, CGFloat a))k_RGBAColor;
//  0xFFFFFF
+ (UIColor *(^)(NSInteger hexValue))k_hexColor;
+ (UIColor *(^)(void))k_randomColor;



@end
