KKInitializer
====
[![](https://img.shields.io/badge/pod-0.0.1-orange.svg)](https://cocoapods.org/pods/KKInitializer) [![](https://img.shields.io/badge/blog-简书-E87040.svg)](https://www.jianshu.com/p/e6ef1df5dd9a)

常用UI控件的便利构造方法集合
现支持 UILabel/UIButton/UIImage 持续更新ing

代码示例
----
```
    UILabel *label =  [UILabel kk_labelWithText:@"Label构造器" boldFontSize:15 textColor:UIColor.redColor];
    label.k_cornerRadius(5).k_backgroudColor(UIColor.lightGrayColor).k_frame(CGRectMake(100, 100, 100, 40));
    [self.view addSubview:label];
```
```
    UIButton *btn = [UIButton k_btnForCustomTypeWithTitle:@"Button构造器" titleColor:[UIColor whiteColor] fontSize:20];
    btn.k_bgImgColor([UIColor purpleColor]).k_cornerRadius(5.0f);
    [self.view addSubview:btn.k_frame(CGRectMake(100, 200, 150, 40))];
```
```
    UIImage *img = UIImage.k_imgFillColor(UIColor.redColor, CGSizeMake(100, 100)).k_cornerRadius(5.0f);
    UIImageView *imgView = [[UIImageView alloc] initWithImage:img];
    imgView.frame = CGRectMake(100, 400, 100, 100);
    [self.view addSubview:imgView];
```

Cocoapods
----
全部控件构造方法扩展(推荐):
```
pod 'KKInitializer'
```
需要其中1个或多个 ,选择使用:
```
pod 'KKInitializer/UILabel+KKInitializer'
pod 'KKInitializer/UIButton+KKInitializer'
pod 'KKInitializer/UIImage+KKInitializer'
```


blog
----
简书：[https://www.jianshu.com/p/e6ef1df5dd9a](https://www.jianshu.com/p/e6ef1df5dd9a)
