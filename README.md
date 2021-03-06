KKInitializer
====
[![](https://img.shields.io/badge/pod-0.0.1-orange.svg)](https://cocoapods.org/pods/KKInitializer) [![](https://img.shields.io/badge/blog-简书-E87040.svg)](https://www.jianshu.com/p/e6ef1df5dd9a)

常用UI控件的便利构造方法集合
现支持 UILabel/UIButton/UIImage/UITextField/UITextView/UIColor等

代码示例
----
```objectivec
    UILabel *label =  [UILabel k_labelWithText:@"Label构造器" boldFontSize:15 textColor:UIColor.redColor];
    label.k_cornerRadius(5).k_backgroudColor(UIColor.lightGrayColor).k_frame(CGRectMake(100, 100, 100, 40));
    [self.view addSubview:label];
```
```objectivec
    UIButton *btn = [UIButton k_btnForCustomTypeWithTitle:@"Button构造器" titleColor:[UIColor whiteColor] fontSize:20];
    btn.k_bgImgColor([UIColor purpleColor]).k_cornerRadius(5.0f);
    [self.view addSubview:btn.k_frame(CGRectMake(100, 200, 150, 40))];
```
```objectivec
    UIImage *img = UIImage.k_imgFillColor(UIColor.redColor, CGSizeMake(100, 100)).k_cornerRadius(5.0f);
    UIImageView *imgView = [[UIImageView alloc] initWithImage:img];
    imgView.frame = CGRectMake(100, 400, 100, 100);
    [self.view addSubview:imgView];
```
```objectivec
    UITextField *textField = UITextField.k_initFrame(CGRectMake(100, 100, 200, 40));
    textField.k_placeholder(@"占位占位占位").k_borderStyle(UITextBorderStyleRoundedRect).k_textColor(UIColor.redColor).k_fontSize(20.f);
    [self.view addSubview:textField];
```
```objectivec
    UITextView *textView = UITextView.k_init().k_textColor(UIColor.redColor).k_boldFontSize(15.f);
    [self.view addSubview:textView];
```
```objectivec
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    view.backgroundColor = UIColor.k_hexColor(0xFF3300);
    view.backgroundColor = UIColor.k_RGBColor(255,121,0);
    view.backgroundColor = UIColor.k_randomColor();
    [self.view addSubview:view];
```

Cocoapods
----
全部控件构造方法扩展(推荐):
```objectivec
pod 'KKInitializer'
```
需要其中1个或多个 ,选择使用:
```objectivec
pod 'KKInitializer/UILabel+KKInitializer'
pod 'KKInitializer/UIButton+KKInitializer'
pod 'KKInitializer/UIImage+KKInitializer'
pod 'KKInitializer/UITextField+KKInitializer'
pod 'KKInitializer/UITextView+KKInitializer'
pod 'KKInitializer/UIColor+KKInitializer'
```


blog
----
简书：[https://www.jianshu.com/p/e6ef1df5dd9a](https://www.jianshu.com/p/e6ef1df5dd9a)
