//
//  UIImage+KKInitializer.m
//  KKInitializer
//
//  Created by Cocoa on 2019/1/8.
//  Copyright © 2019年 cocoa. All rights reserved.
//

#import "UIImage+KKInitializer.h"

@implementation UIImage (KKInitializer)

+ (UIImage *(^)(NSString *imgName))k_imgName {
    return ^id(NSString *img_name) {
        return [[self class] imageNamed:img_name];
    };
}

+ (UIImage *(^)(NSString *imgName))k_fileImgName {
    return ^id(NSString *img_name) {
        NSString *imgPath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:img_name];
        UIImage *img = [UIImage imageWithContentsOfFile:imgPath];
        return img;
    };
}

+ (UIImage *(^)(UIColor *imgFillColor, CGSize imgSize))k_imgFillColor {
    return ^id(UIColor *img_color, CGSize imgSize) {
        CGRect rect = CGRectMake(0.0f, 0.0f, imgSize.width, imgSize.height);
        UIGraphicsBeginImageContext(rect.size);
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextSetFillColorWithColor(context, [img_color CGColor]);
        CGContextFillRect(context, rect);
        UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return theImage;
    };
}

- (UIImage *(^)(CGFloat cornerRadius))k_cornerRadius {
    return ^id(CGFloat cornerRadius) {
        CGRect targetRect = (CGRect){0,0,self.size.width, self.size.height};
        UIGraphicsBeginImageContextWithOptions(targetRect.size, NO, [UIScreen mainScreen].scale);
        UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:targetRect
                                                   byRoundingCorners:UIRectCornerAllCorners
                                                         cornerRadii:CGSizeMake(cornerRadius, cornerRadius)];
        CGContextAddPath(UIGraphicsGetCurrentContext(), path.CGPath);
        CGContextClip(UIGraphicsGetCurrentContext());
        [self drawInRect:targetRect];
    
        UIImage *finalImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return finalImage;
    };
}

@end
