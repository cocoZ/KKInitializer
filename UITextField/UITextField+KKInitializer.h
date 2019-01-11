//
//  UITextField+KKInitializer.h
//  KKInitializer
//
//  Created by Cocoa on 2019/1/11.
//  Copyright © 2019年 cocoa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (KKInitializer)

+ (UITextField *(^)(void))k_init;
+ (UITextField *(^)(CGRect frame))k_initFrame;
- (UITextField *(^)(CGRect frame))k_frame;

- (UITextField *(^)(NSString *text))k_text;
- (UITextField *(^)(NSString *placeholder))k_placeholder;
- (UITextField *(^)(UIColor *textColor))k_textColor;

///  systom font
- (UITextField *(^)(CGFloat fontSize))k_fontSize;
- (UITextField *(^)(CGFloat boldFontSize))k_boldFontSize;
- (UITextField *(^)(UIFont *font))k_font;

- (UITextField *(^)(NSTextAlignment alignment))k_textAlignment;
- (UITextField *(^)(UITextBorderStyle style))k_borderStyle;
@end
