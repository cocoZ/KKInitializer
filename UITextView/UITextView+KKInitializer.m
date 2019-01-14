//
//  UITextView+KKInitializer.m
//  KKInitializer
//
//  Created by Cocoa on 2019/1/11.
//  Copyright © 2019年 cocoa. All rights reserved.
//

#import "UITextView+KKInitializer.h"

@implementation UITextView (KKInitializer)

+ (UITextView *(^)(void))k_init {
    return ^id() {
        return [UITextView new];
    };
}
+ (UITextView *(^)(CGRect))k_frame {
    return ^id(CGRect frame) {
        return [[UITextView alloc] initWithFrame:frame];
    };
}
- (UITextView *(^)(CGRect))k_frame {
    return ^id(CGRect frame) {
        self.frame = frame;
        return self;
    };
}

- (UITextView *(^)(NSString *))k_text {
    return ^id(NSString *text) {
        return text;
    };
}
- (UITextView *(^)(UIColor *))k_textColor {
    return ^id(UIColor *textColor) {
        self.textColor = textColor;
        return self;
    };
}
- (UITextView *(^)(NSTextAlignment))k_textAlignment {
    return ^id(NSTextAlignment al) {
        self.textAlignment = al;
        return self;
    };
}

- (UITextView *(^)(CGFloat))k_fontSize {
    return ^id(CGFloat fontSize) {
        UIFont *font = [UIFont systemFontOfSize:fontSize];
        return self.k_font(font);
    };
}
- (UITextView *(^)(CGFloat))k_boldFontSize {
    return ^id(CGFloat boldFontSize) {
        UIFont *font = [UIFont boldSystemFontOfSize:boldFontSize];
        return self.k_font(font);
    };
}
- (UITextView *(^)(UIFont *))k_font {
    return ^id(UIFont *font) {
        if (font) {
            self.font = font;
        }
        return self;
    };
}

- (UITextView *(^)(UIEdgeInsets))k_textContainerInset {
    return ^id(UIEdgeInsets inset) {
        self.textContainerInset = inset;
        return self;
    };
}

@end
