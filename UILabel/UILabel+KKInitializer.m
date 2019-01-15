//
//  UILabel+KKInitializer.m
//  KKInitializer
//
//  Created by Cocoa on 2018/12/29.
//  Copyright © 2018年 cocoa. All rights reserved.
//

#import "UILabel+KKInitializer.h"

@implementation UILabel (KKInitializer)



///  常用不包含Text的Label
+ (instancetype)k_labelWithFontSize:(CGFloat)fontSize textColor:(UIColor *)textColor {
    return [self k_labelWithText:nil fontSize:fontSize textColor:textColor];
}
+ (instancetype)k_labelWithBoldFontSize:(CGFloat)fontSize textColor:(UIColor *)textColor {
    return [self k_labelWithText:nil boldFontSize:fontSize textColor:textColor];
}
+ (instancetype)k_labelWithFont:(UIFont *)font textColor:(UIColor *)textColor {
    return [self k_labelWithText:nil font:font textColor:textColor];
}

///  常用包含Text的Label
+ (instancetype)k_labelWithText:(NSString *)text fontSize:(CGFloat)fontSize textColor:(UIColor *)textColor {
    UIFont *font = [UIFont systemFontOfSize:fontSize];
    return [self k_labelWithText:text font:font textColor:textColor];
}
+ (instancetype)k_labelWithText:(NSString *)text boldFontSize:(CGFloat)fontSize textColor:(UIColor *)textColor {
    UIFont *font = [UIFont boldSystemFontOfSize:fontSize];
    return [self k_labelWithText:text font:font textColor:textColor];
}
+ (instancetype)k_labelWithText:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor {
    
    UILabel *l = [UILabel new];
    l.text = text;
    l.font = font ? font : l.font;
    l.textColor = textColor ? textColor : l.textColor;

    return l;
}

///  携带字体名字的Label
+ (instancetype)k_labelWithFontName:(NSString *)fontName fontSize:(CGFloat)fontSize textColor:(UIColor *)textColor {
    UIFont *font = [UIFont fontWithName:fontName size:fontSize];
    return [self k_labelWithText:nil font:font textColor:textColor];
}


///  全部参数构造器
+ (instancetype)k_labelWithText:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)alignment cornerRadius:(CGFloat)cornerRadius {
    
    return UILabel.k_init().k_text(text).k_font(font).k_textColor(textColor).k_textAlignment(alignment).k_cornerRadius(cornerRadius);
}

+ (UILabel *(^)(void))k_init {
    return ^id() {
        return [UILabel new];
    };
}
+ (UILabel *(^)(CGRect))k_initFrame {
    return ^id(CGRect frame) {
        return [[UILabel alloc] initWithFrame:frame];
    };
}
///  链式语法设置常用参数
- (UILabel *(^)(CGRect frame))          k_frame {
    return ^id(CGRect frame) {
        self.frame = frame;
        return self;
    };
}
- (UILabel *(^)(NSString *text))        k_text {
    return ^id(NSString *text) {
        self.text = text;
        return self;
    };
}
- (UILabel *(^)(CGFloat   fontSize))    k_fontSize {
    return ^id(CGFloat fontSize) {
        return self.k_font([UIFont systemFontOfSize:fontSize]);
    };
}
- (UILabel *(^)(CGFloat   boldFontSize))k_boldFontSize {
    return ^id(CGFloat boldFontSize) {
        return self.k_font([UIFont boldSystemFontOfSize:boldFontSize]);
    };
}
- (UILabel *(^)(UIFont   *font))        k_font {
    return ^id(UIFont *font) {
        self.font = font ? font : self.font;
        return self;
    };
}
- (UILabel *(^)(UIColor  *textColor))   k_textColor {
    return ^id(UIColor *textColor) {
        self.textColor = textColor ? textColor : self.textColor;
        return self;
    };
}

///  链式语法设置不常用参数
- (UILabel *(^)(NSTextAlignment alignment))     k_textAlignment {
    return ^id(NSTextAlignment alignment) {
        self.textAlignment = alignment;
        return self;
    };
}
- (UILabel *(^)(UIColor         *color))        k_backgroudColor {
    return ^id(UIColor *color) {
        self.backgroundColor = color;
        return self;
    };
}
- (UILabel *(^)(CGFloat         cornerRadius))  k_cornerRadius {
    return ^id(CGFloat cornerRadius) {
        self.layer.cornerRadius = cornerRadius;
        self.layer.masksToBounds = YES;
        return self;
    };
}


@end
