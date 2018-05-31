//
//  SNMasonryHiddenViewController.m
//  MasonryHidden_Example
//
//  Created by sunny on 2018/5/31.
//  Copyright © 2018年 sunny. All rights reserved.
//

#import "SNMasonryHiddenViewController.h"
#import <Masonry/Masonry.h>
#import "MASConstraint+Hidden.h"
#import "UIView+MasonryHidden.h"

@interface SNMasonryHiddenViewController () {
    UIView *_subView1;
}
@end

@implementation SNMasonryHiddenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *subView0 = [[UIView alloc] init];
    [self.view addSubview:subView0];
    [subView0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@20);
        make.right.equalTo(@(-20));
        make.top.equalTo(@100);
        make.height.equalTo(@20);
    }];
    subView0.backgroundColor = [UIColor lightGrayColor];
    
    UIView *subView1 = [[UIView alloc] init];
    [self.view addSubview:subView1];
    [subView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@20);
        make.right.equalTo(@(-20));
        make.top.equalTo(subView0.mas_bottom).offset(30).autoHidden(subView1);
        make.height.equalTo(@20).autoHidden(subView1);
    }];
    subView1.backgroundColor = [UIColor grayColor];
    _subView1 = subView1;
    
    UIView *subView2 = [[UIView alloc] init];
    [self.view addSubview:subView2];
    [subView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@20);
        make.right.equalTo(@(-20));
        make.top.equalTo(subView1.mas_bottom).offset(30);
        make.height.equalTo(@20);
    }];
    subView2.backgroundColor = [UIColor darkGrayColor];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    _subView1.masonry_hidden = !_subView1.masonry_hidden;
}


@end
