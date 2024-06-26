//
//  UITextField+KKInitializer.m
//  KKInitializer
//
//  Created by Cocoa on 2019/1/11.
//  Copyright © 2019年 cocoa. All rights reserved.
//

#import "UITextField+KKInitializer.h"

@implementation UITextField (KKInitializer)

+ (UITextField *(^)(void))k_init {
    return ^id(void) {
        return [UITextField new];
    };
}
+ (UITextField *(^)(CGRect))k_initFrame {
    return ^id(CGRect frame) {
        return [[UITextField alloc] initWithFrame:frame];
    };
}

- (UITextField *(^)(CGRect))k_frame {
    return ^id(CGRect frame) {
        self.frame = frame;
        return self;
    };
}

- (UITextField *(^)(NSString *))k_text {
    return ^id(NSString *text) {
        self.text = text;
        return self;
    };
}
- (UITextField *(^)(NSString *))k_placeholder {
    return ^id(NSString *placeholder) {
        self.placeholder = placeholder;
        return self;
    };
}
- (UITextField *(^)(UIColor *))k_textColor {
    return ^id(UIColor *textColor) {
        if (textColor) {
            self.textColor = textColor;
        }
        return self;
    };
}
- (UITextField *(^)(UIColor *placeholderTextColor, NSString *placeholder))k_placeholderTextColor {
    return ^id(UIColor *placeholderTextColor, NSString *placeholder) {
        if (placeholderTextColor) {
            self.attributedPlaceholder = [[NSAttributedString alloc] initWithString:placeholder attributes:@{NSForegroundColorAttributeName : placeholderTextColor}];
        }
        return self;
    };
}

- (UITextField *(^)(CGFloat))k_fontSize {
    return ^id(CGFloat fontSize) {
        UIFont *font = [UIFont systemFontOfSize:fontSize];
        return self.k_font(font);
    };
}
- (UITextField *(^)(CGFloat mediumFontSize))k_mediumFontSize {
    return ^id(CGFloat mediumFontSize) {
        UIFont *font = [UIFont systemFontOfSize:mediumFontSize weight:UIFontWeightMedium];
        return self.k_font(font);
    };
}
- (UITextField *(^)(CGFloat))k_boldFontSize {
    return ^id(CGFloat boldFontSize) {
        UIFont *font = [UIFont boldSystemFontOfSize:boldFontSize];
        return self.k_font(font);
    };
}
- (UITextField *(^)(UIFont *))k_font {
    return ^id(UIFont *font) {
        if (font) {
            self.font = font;
        }
        return self;
    };
}

- (UITextField *(^)(NSTextAlignment))k_textAlignment {
    return ^id(NSTextAlignment textAlignment) {
        self.textAlignment = textAlignment;
        return self;
    };
}
- (UITextField *(^)(UITextBorderStyle))k_borderStyle {
    return ^id(UITextBorderStyle style) {
        self.borderStyle = style;
        return self;
    };
}

@end
