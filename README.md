# MasonryHidden

[![Build Status](https://travis-ci.org/SunnySunning/MasonryHidden.svg?branch=master)](https://travis-ci.org/SunnySunning/MasonryHidden)
//[![CI Status](https://img.shields.io/travis/sunny/MasonryHidden.svg?style=flat)](https://travis-ci.org/sunny/MasonryHidden)
[![Version](https://img.shields.io/cocoapods/v/MasonryHidden.svg?style=flat)](https://cocoapods.org/pods/MasonryHidden)
[![License](https://img.shields.io/cocoapods/l/MasonryHidden.svg?style=flat)](https://cocoapods.org/pods/MasonryHidden)
[![Platform](https://img.shields.io/cocoapods/p/MasonryHidden.svg?style=flat)](https://cocoapods.org/pods/MasonryHidden)

## What's wrong with Masonry?
**Masonry is so convenience. But when a view could hidden any where or any time,we maybe use updateContraint or use properties to link contraint,to active or deactive if necessary.its so troublesome！**

**MasonryHidden is so convenience to solve above problems!!! focous on Example!!!**


## Example

```obj-c
//引用头文件
#import "MASConstraint+Hidden.h"
#import "UIView+MasonryHidden.h"

//创建view
UIView *subView0 = [[UIView alloc] init];
[self.view addSubview:subView0];
[subView0 mas_makeConstraints:^(MASConstraintMaker *make) {
    make.left.equalTo(@20);
    make.right.equalTo(@(-20));
    //在需要hidden的约束下调用autoHidden()
    make.top.equalTo(@50).autoHidden(subView0);
    make.height.equalTo(@20).autoHidden(subView0);
}];
subView0.backgroundColor = [UIColor lightGrayColor];

//在相关的方法中调用masonry_hidden
_subView0.masonry_hidden = !_subView0.masonry_hidden;

```
## Gif

![view demo](https://github.com/SunnySunning/MasonryHidden/blob/master/MaonryHidden.gif)

## Star me

if you feel convenience use masonryhidden,star me pleasure!


## Installation

MasonryHidden is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'MasonryHidden'
```

## Author

sunny, 1475106659@qq.com

## License

MasonryHidden is available under the MIT license. See the LICENSE file for more info.
