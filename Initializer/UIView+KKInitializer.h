//
//  UIView+KKInitializer.h
//  KKInitializer
//
//  Created by Cocoa on 2019/1/12.
//  Copyright © 2019年 cocoa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (KKInitializer)

+ (instancetype(^)(void))k_init;

@end
