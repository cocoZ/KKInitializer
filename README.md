KKInitializer
====
[![](https://img.shields.io/badge/pod-0.0.1-orange.svg)](https://cocoapods.org/pods/KKInitializer) [![](https://img.shields.io/badge/blog-简书-E87040.svg)](https://www.jianshu.com/p/4f75be2e21dc)

常用UI控件的便利构造方法集合
现支持 UILabel

代码示例
----
```
UILabel *label =  [UILabel kk_labelWithText:@"Label构造器" boldFontSize:15 textColor:UIColor.redColor];
    
    label.k_cornerRadius(5).k_backgroudColor(UIColor.lightGrayColor).k_frame(CGRectMake(100, 100, 100, 40));
    
    [self.view addSubview:label];
```

Cocoapods
----
```
pod 'KKInitializer'
```

blog
----
简书：[https://www.jianshu.com/p/4f75be2e21dc](https://www.jianshu.com/p/4f75be2e21dc)
