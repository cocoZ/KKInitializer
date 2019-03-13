//
//  UIButton+KKInitializer.m
//  KKInitializer
//
//  Created by Cocoa on 2019/1/3.
//  Copyright © 2019年 cocoa. All rights reserved.
//

#import "UIButton+KKInitializer.h"

@implementation UIButton (KKInitializer)


+ (instancetype)k_btnForSystomTypeWithTitle:(NSString *)title {
    return [self k_btnForCustomTypeWithTitle:title titleColor:nil];
}
+ (instancetype)k_btnForSystomTypeWithTitle:(NSString *)title titleColor:(UIColor *)titleColor {
    return [self k_btnForSystomTypeWithTitle:title titleColor:titleColor fontSize:0];
}
+ (instancetype)k_btnForSystomTypeWithTitle:(NSString *)title titleColor:(UIColor *)titleColor fontSize:(CGFloat)fontSize {
    UIFont *font = fontSize ? [UIFont systemFontOfSize:fontSize] : nil;
    return [self k_btnForSystomTypeWithTitle:title titleColor:titleColor font:font];
}
+ (instancetype)k_btnForSystomTypeWithTitle:(NSString *)title titleColor:(UIColor *)titleColor boldFontSize:(CGFloat)boldFontSize {
    return [self k_btnForSystomTypeWithTitle:title titleColor:titleColor font:[UIFont boldSystemFontOfSize:boldFontSize]];
}
+ (instancetype)k_btnForSystomTypeWithTitle:(NSString *)title titleColor:(UIColor *)titleColor font:(UIFont *)font {
    return UIButton.k_initType(UIButtonTypeSystem).k_title(title).k_titleColor(titleColor).k_font(font);
}

+ (instancetype)k_btnForCustomTypeWithTitle:(NSString *)title {
    return [self k_btnForCustomTypeWithTitle:title titleColor:nil];
}
+ (instancetype)k_btnForCustomTypeWithTitle:(NSString *)title titleColor:(UIColor *)titleColor {
    return [self k_btnForCustomTypeWithTitle:title titleColor:titleColor fontSize:0];
}
+ (instancetype)k_btnForCustomTypeWithTitle:(NSString *)title titleColor:(UIColor *)titleColor fontSize:(CGFloat)fontSize {
    UIFont *font = fontSize ? [UIFont systemFontOfSize:fontSize] : nil;
    return [self k_btnForCustomTypeWithTitle:title titleColor:titleColor font:font];
}
+ (instancetype)k_btnForCustomTypeWithTitle:(NSString *)title titleColor:(UIColor *)titleColor boldFontSize:(CGFloat)boldFontSize {
    return [self k_btnForCustomTypeWithTitle:title titleColor:titleColor font:[UIFont boldSystemFontOfSize:boldFontSize]];
}
+ (instancetype)k_btnForCustomTypeWithTitle:(NSString *)title titleColor:(UIColor *)titleColor font:(UIFont *)font {
    return UIButton.k_initType(UIButtonTypeCustom).k_title(title).k_titleColor(titleColor).k_font(font);
}







+ (UIButton *(^)(void))k_init {
    return ^id() {
        return UIButton.k_initType(UIButtonTypeSystem);
    };
}

+ (UIButton *(^)(UIButtonType type))k_initType {
    return ^id(UIButtonType type) {
        return [UIButton buttonWithType:type];
    };
}

- (UIButton *(^)(CGRect frame))k_frame {
    return ^id(CGRect frame) {
        self.frame = frame;
        return self;
    };
}

- (UIButton *(^)(UIFont *))k_font {
    return ^id(UIFont *font) {
        if (font) {
            self.titleLabel.font = font;
        }
        return self;
    };
}

///  设置的是UIView的背景色，无点击效果
- (UIButton *(^)(UIColor *bgColor))k_bgColor {
    return ^id(UIColor *bgColor) {
        if (bgColor) {
            self.backgroundColor = bgColor;
        }
        return self;
    };
}
///  根据颜色生成image, 设置UIButton的backgroundImage, 有点击背景变暗效果
- (UIButton *(^)(UIColor *bgImgColor))k_bgImgColor {
    return ^id(UIColor *bgImgColor) {
        
        CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
        UIGraphicsBeginImageContext(rect.size);
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextSetFillColorWithColor(context, [bgImgColor CGColor]);
        CGContextFillRect(context, rect);
        UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        return self.k_bgImg(theImage);
    };
}

- (UIButton *(^)(CGFloat cornerRadius))k_cornerRadius {
    return ^id(CGFloat cornerRadius) {
        self.layer.cornerRadius = cornerRadius;
        self.layer.masksToBounds = YES;
        return self;
    };
}

///  state default normal
- (UIButton *(^)(NSString *title))k_title {
    return ^id(NSString *title) {
        return self.k_title_state(title, UIControlStateNormal);
    };
}
- (UIButton *(^)(UIColor *color))k_titleColor {
    return ^id(UIColor *color) {
        return self.k_titleColor_state(color, UIControlStateNormal);
    };
}
- (UIButton *(^)(UIImage *image))k_img {
    return ^id(UIImage *img) {
        return self.k_img_state(img, UIControlStateNormal);
    };
}
- (UIButton *(^)(UIImage *backgroudImg))k_bgImg {
    return ^id(UIImage *img) {
        return self.k_bgImg_state(img, UIControlStateNormal);
    };
}

- (UIButton *(^)(NSString *title, UIControlState state))k_title_state {
    return ^id(NSString *title, UIControlState state) {
        [self setTitle:title forState:state];
        return self;
    };
}
- (UIButton *(^)(UIColor *color, UIControlState state))k_titleColor_state {
    return ^id(UIColor *color, UIControlState state) {
        if (color) {
            [self setTitleColor:color forState:state];
        }
        return self;
    };
}
- (UIButton *(^)(UIImage *img, UIControlState state))k_img_state {
    return ^id(UIImage *img, UIControlState state) {
        if (img) {
            [self setImage:img forState:state];
        }
        return self;
    };
}
- (UIButton *(^)(UIImage *backgroudImg, UIControlState state))k_bgImg_state {
    return ^id(UIImage *img, UIControlState state) {
        if (img) {
            [self setBackgroundImage:img forState:state];
        }
        return self;
    };
}

@end
