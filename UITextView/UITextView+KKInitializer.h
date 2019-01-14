//
//  UITextView+KKInitializer.h
//  KKInitializer
//
//  Created by Cocoa on 2019/1/11.
//  Copyright © 2019年 cocoa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextView (KKInitializer)

+ (UITextView *(^)(void))k_init;
+ (UITextView *(^)(CGRect frame))k_frame;
- (UITextView *(^)(CGRect frame))k_frame;

- (UITextView *(^)(NSString *text))k_text;
- (UITextView *(^)(UIColor *textColor))k_textColor;
- (UITextView *(^)(NSTextAlignment textAlignment))k_textAlignment;

- (UITextView *(^)(CGFloat fontSize))k_fontSize;
- (UITextView *(^)(CGFloat boldFontSize))k_boldFontSize;
- (UITextView *(^)(UIFont *font))k_font;

- (UITextView *(^)(UIEdgeInsets textContainerInset))k_textContainerInset;

@end
