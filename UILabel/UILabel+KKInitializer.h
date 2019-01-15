//
//  UILabel+KKInitializer.h
//  KKInitializer
//
//  Created by Cocoa on 2018/12/29.
//  Copyright © 2018年 cocoa. All rights reserved.
//

#import <UIKit/UIKit.h>


///  UILabel构造器
@interface UILabel (KKInitializer)

///  常用不包含Text的构造器
+ (instancetype)k_labelWithFontSize:(CGFloat)fontSize
                           textColor:(UIColor *)textColor;

+ (instancetype)k_labelWithBoldFontSize:(CGFloat)fontSize
                               textColor:(UIColor *)textColor;

+ (instancetype)k_labelWithFont:(UIFont *)font
                       textColor:(UIColor *)textColor;

///  常用包含Text的构造器
+ (instancetype)k_labelWithText:(NSString *)text
                        fontSize:(CGFloat)fontSize
                       textColor:(UIColor *)textColor;

+ (instancetype)k_labelWithText:(NSString *)text
                    boldFontSize:(CGFloat)fontSize
                       textColor:(UIColor *)textColor;

+ (instancetype)k_labelWithText:(NSString *)text
                            font:(UIFont *)font
                       textColor:(UIColor *)textColor;

///  携带字体名字的构造器
+ (instancetype)k_labelWithFontName:(NSString *)fontName
                            fontSize:(CGFloat)fontSize
                           textColor:(UIColor *)textColor;


///  全-参数构造器
+ (instancetype)k_labelWithText:(NSString *)text
                            font:(UIFont *)font
                       textColor:(UIColor *)textColor
                   textAlignment:(NSTextAlignment)alignment
                    cornerRadius:(CGFloat)cornerRadius;


+ (UILabel *(^)(void))k_init;
+ (UILabel *(^)(CGRect frame))k_initFrame;
///  链式语法设置常用参数
- (UILabel *(^)(CGRect frame))          k_frame;
- (UILabel *(^)(NSString *text))        k_text;
- (UILabel *(^)(CGFloat   fontSize))    k_fontSize;
- (UILabel *(^)(CGFloat   boldFontSize))k_boldFontSize;
- (UILabel *(^)(UIFont   *font))        k_font;
- (UILabel *(^)(UIColor  *textColor))   k_textColor;

///  链式语法设置不常用参数
- (UILabel *(^)(NSTextAlignment alignment))     k_textAlignment;
- (UILabel *(^)(UIColor         *color))        k_backgroudColor;
- (UILabel *(^)(CGFloat         cornerRadius))  k_cornerRadius;

@end

