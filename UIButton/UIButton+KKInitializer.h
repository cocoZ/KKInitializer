//
//  UIButton+KKInitializer.h
//  KKInitializer
//
//  Created by Cocoa on 2019/1/3.
//  Copyright © 2019年 cocoa. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, MKButtonEdgeInsetsStyle) {
    MKButtonEdgeInsetsStyleTop, // image在上，label在下
    MKButtonEdgeInsetsStyleLeft, // image在左，label在右
    MKButtonEdgeInsetsStyleBottom, // image在下，label在上
    MKButtonEdgeInsetsStyleRight // image在右，label在左
};

///  UIButton 便利构造器
@interface UIButton (KKInitializer)

+ (instancetype)k_btnForSystomTypeWithTitle:(NSString *)title;
+ (instancetype)k_btnForSystomTypeWithTitle:(NSString *)title titleColor:(UIColor *)titleColor;
+ (instancetype)k_btnForSystomTypeWithTitle:(NSString *)title titleColor:(UIColor *)titleColor fontSize:(CGFloat)fontSize;
+ (instancetype)k_btnForSystomTypeWithTitle:(NSString *)title titleColor:(UIColor *)titleColor boldFontSize:(CGFloat)blodFontSize;

+ (instancetype)k_btnForCustomTypeWithTitle:(NSString *)title;
+ (instancetype)k_btnForCustomTypeWithTitle:(NSString *)title titleColor:(UIColor *)titleColor;
+ (instancetype)k_btnForCustomTypeWithTitle:(NSString *)title titleColor:(UIColor *)titleColor fontSize:(CGFloat)fontSize;
+ (instancetype)k_btnForCustomTypeWithTitle:(NSString *)title titleColor:(UIColor *)titleColor boldFontSize:(CGFloat)boldFontSize;



+ (UIButton *(^)(void))k_init;
+ (UIButton *)k_systemBtn;
+ (UIButton *)k_customBtn;
+ (UIButton *(^)(UIButtonType type))k_initType;
- (UIButton *(^)(CGRect frame))k_frame;
- (UIButton *(^)(CGFloat fSize))k_fontSize;
- (UIButton *(^)(CGFloat mediumFSize))k_mediumFontSize;
- (UIButton *(^)(CGFloat boldFSize))k_boldFontSize;
- (UIButton *(^)(UIFont *font))k_font;
///  设置的是UIView的背景色，无点击效果
- (UIButton *(^)(UIColor *bgColor))k_bgColor;
///  设置button圆角
- (UIButton *(^)(CGFloat cornerRadius))k_cornerRadius;

///  state 默认 normal
- (UIButton *(^)(NSString *title))k_title;
- (UIButton *(^)(NSString *title, UIControlState state))k_title_state;

- (UIButton *(^)(UIColor *color))k_titleColor;
- (UIButton *(^)(UIColor *color, UIControlState state))k_titleColor_state;

- (UIButton *(^)(UIImage *img))k_img;
- (UIButton *(^)(UIImage *img, UIControlState state))k_img_state;
- (UIButton *(^)(NSString *imgName))k_imgName;
- (UIButton *(^)(NSString *imgName, UIControlState state))k_imgName_state;

///  根据颜色生成image, 设置UIButton的backgroundImage, 有点击背景变暗效果
- (UIButton *(^)(UIColor *bgImgColor))k_bgImgColor;
- (UIButton *(^)(UIColor *bgImgColor, UIControlState state))k_bgImgColor_state;

- (UIButton *(^)(UIImage *bgImg))k_bgImg;
- (UIButton *(^)(UIImage *bgImg, UIControlState state))k_bgImg_state;

///  和 k_padding 不可同时使用
- (UIButton *(^)(MKButtonEdgeInsetsStyle style, CGFloat space))k_style_space;
- (UIButton *(^)(CGFloat topbottomPadding, CGFloat leftrightPadding))k_padding;


@end

