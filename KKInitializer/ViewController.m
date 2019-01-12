//
//  ViewController.m
//  KKInitializer
//
//  Created by Cocoa on 2018/12/29.
//  Copyright © 2018年 cocoa. All rights reserved.
//

#import "ViewController.h"
#import "KKInitializer.h"
#import "UIView+KKInitializer.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self addTextField];
}
- (void)addLabel {
    UILabel *label =  [UILabel k_labelWithText:@"Label构造器" boldFontSize:15 textColor:UIColor.redColor];
    label.k_cornerRadius(5).k_backgroudColor(UIColor.lightGrayColor).k_frame(CGRectMake(100, 100, 100, 40)).k_textAlignment(NSTextAlignmentCenter);
    [self.view addSubview:label];
}
- (void)addButton {
    UIButton *btn = [UIButton k_btnForCustomTypeWithTitle:@"Button构造器" titleColor:[UIColor whiteColor] fontSize:20];
    btn.k_bgImgColor([UIColor purpleColor]).k_cornerRadius(5.0f);
    [self.view addSubview:btn.k_frame(CGRectMake(100, 200, 150, 40))];
}
- (void)addImage {
    UIImage *img = UIImage.k_imgFillColor(UIColor.redColor, CGSizeMake(100, 100)).k_cornerRadius(5.0f);
    UIImageView *imgView = [[UIImageView alloc] initWithImage:img];
    imgView.frame = CGRectMake(100, 400, 100, 100);
    [self.view addSubview:imgView];
}
- (void)addTextField {
    
    UITextField *textField = UITextField.k_initFrame(CGRectMake(100, 100, 200, 40));
    textField.k_placeholder(@"占位占位占位").k_borderStyle(UITextBorderStyleRoundedRect).k_textColor(UIColor.redColor).k_fontSize(20.f);
    [self.view addSubview:textField];
}
- (void)addTextView {
    UITextView *textView = UITextView.k_init();
    [self.view addSubview:textView];
    
}


@end
