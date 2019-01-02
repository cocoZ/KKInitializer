//
//  ViewController.m
//  KKInitializer
//
//  Created by Cocoa on 2018/12/29.
//  Copyright © 2018年 cocoa. All rights reserved.
//

#import "ViewController.h"
#import "KKInitializer.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    UILabel *label =  [UILabel kk_labelWithText:@"Label构造器" boldFontSize:15 textColor:UIColor.redColor];
    label.k_cornerRadius(5).k_backgroudColor(UIColor.lightGrayColor).k_frame(CGRectMake(100, 100, 100, 40));
    [self.view addSubview:label];
}


@end
