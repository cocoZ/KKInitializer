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
+ (UIButton *)k_systemBtn {
//    return ^id() {
        return [UIButton buttonWithType:UIButtonTypeSystem];
//    };
}
+ (UIButton *)k_customBtn {
//    return ^id() {
        return [UIButton buttonWithType:UIButtonTypeCustom];
//    };
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
- (UIButton *(^)(CGFloat fSize))k_fontSize {
    return ^id(CGFloat fSize) {
        return self.k_font([UIFont systemFontOfSize:fSize]);
    };
}
- (UIButton *(^)(CGFloat mediumFSize))k_mediumFontSize {
    return ^id(CGFloat mediumFSize) {
        return self.k_font([UIFont systemFontOfSize:mediumFSize weight:UIFontWeightMedium]);
    };
}
- (UIButton *(^)(CGFloat boldFSize))k_boldFontSize {
    return ^id(CGFloat boldFSize) {
        return self.k_font([UIFont boldSystemFontOfSize:boldFSize]);
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

- (UIButton *(^)(NSString *imgName))k_imgName {
    return ^id(NSString *imgName) {
        return self.k_img([UIImage imageNamed:imgName]);
    };
}
- (UIButton *(^)(UIImage *image))k_img {
    return ^id(UIImage *img) {
        return self.k_img_state(img, UIControlStateNormal);
    };
}
- (UIButton *(^)(NSString *imgName, UIControlState state))k_imgName_state {
    return ^id(NSString *imgName, UIControlState state) {
        return self.k_img_state([UIImage imageNamed:imgName], state);
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

- (UIButton *(^)(UIColor *bgImgColor))k_bgImgColor {
    return ^id(UIColor *bgImgColor) {
        return self.k_bgImgColor_state(bgImgColor, UIControlStateNormal);
    };
}
- (UIButton *(^)(UIColor *bgImgColor, UIControlState state))k_bgImgColor_state {
    return ^id(UIColor *bgImgColor, UIControlState state) {
        
        CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
        UIGraphicsBeginImageContext(rect.size);
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextSetFillColorWithColor(context, [bgImgColor CGColor]);
        CGContextFillRect(context, rect);
        UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        return self.k_bgImg_state(theImage, state);
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

- (UIButton *(^)(MKButtonEdgeInsetsStyle style, CGFloat space))k_style_space {
    return ^id(MKButtonEdgeInsetsStyle style, CGFloat space) {
        /**
         *  前置知识点：titleEdgeInsets是title相对于其上下左右的inset，跟tableView的contentInset是类似的，
         *  如果只有title，那它上下左右都是相对于button的，image也是一样；
         *  如果同时有image和label，那这时候image的上左下是相对于button，右边是相对于label的；title的上右下是相对于button，左边是相对于image的。
         */
        
        // 1. 得到imageView和titleLabel的宽、高
        CGFloat imageWith = self.imageView.frame.size.width;
        CGFloat imageHeight = self.imageView.frame.size.height;
        
        CGFloat labelWidth = 0.0;
        CGFloat labelHeight = 0.0;
        if ([UIDevice currentDevice].systemVersion.floatValue >= 8.0) {
            // 由于iOS8中titleLabel的size为0，用下面的这种设置
            labelWidth = self.titleLabel.intrinsicContentSize.width;
            labelHeight = self.titleLabel.intrinsicContentSize.height;
        } else {
            labelWidth = self.titleLabel.frame.size.width;
            labelHeight = self.titleLabel.frame.size.height;
        }
        
        // 2. 声明全局的imageEdgeInsets和labelEdgeInsets
        UIEdgeInsets imageEdgeInsets = UIEdgeInsetsZero;
        UIEdgeInsets labelEdgeInsets = UIEdgeInsetsZero;
        
        // 3. 根据style和space得到imageEdgeInsets和labelEdgeInsets的值
        switch (style) {
            case MKButtonEdgeInsetsStyleTop:
            {
                imageEdgeInsets = UIEdgeInsetsMake(-labelHeight-space/2.0, 0, 0, -labelWidth);
                labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith , -imageHeight-space/2.0, 0);
            }
                break;
            case MKButtonEdgeInsetsStyleLeft:
            {
                imageEdgeInsets = UIEdgeInsetsMake(0, -space/2.0, 0, space/2.0);
                labelEdgeInsets = UIEdgeInsetsMake(0, space/2.0, 0, -space/2.0);
            }
                break;
            case MKButtonEdgeInsetsStyleBottom:
            {
                imageEdgeInsets = UIEdgeInsetsMake(0, 0, -labelHeight-space/2.0, -labelWidth);
                labelEdgeInsets = UIEdgeInsetsMake(-imageHeight-space/2.0, -imageWith, 0, 0);
            }
                break;
            case MKButtonEdgeInsetsStyleRight:
            {
                imageEdgeInsets = UIEdgeInsetsMake(0, labelWidth+space/2.0, 0, -labelWidth-space/2.0);
                labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith-space/2.0, 0, imageWith+space/2.0);
            }
                break;
            default:
                break;
        }
        
        // 4. 赋值
        self.titleEdgeInsets = labelEdgeInsets;
        self.imageEdgeInsets = imageEdgeInsets;
        
        return self;
    };
}

- (UIButton *(^)(CGFloat topbottomPadding, CGFloat leftrightPadding))k_padding {
    return ^id(CGFloat topbottomPadding, CGFloat leftrightPadding) {
        self.contentEdgeInsets = UIEdgeInsetsMake(topbottomPadding, leftrightPadding, topbottomPadding, leftrightPadding);
        return self;
    };
}

@end
