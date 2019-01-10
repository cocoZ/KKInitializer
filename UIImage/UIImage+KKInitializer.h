//
//  UIImage+KKInitializer.h
//  KKInitializer
//
//  Created by Cocoa on 2019/1/8.
//  Copyright © 2019年 cocoa. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIImage (KKInitializer)

+ (UIImage *(^)(NSString *imgName))k_imgName;
///  load from mainBundle path
+ (UIImage *(^)(NSString *imgName))k_fileImgName;

+ (UIImage *(^)(UIColor *imgFillColor, CGSize imgSize))k_imgFillColor;

- (UIImage *(^)(CGFloat cornerRadius))k_cornerRadius;

@end

