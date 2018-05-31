//
//  SNMaonryUpdateContriantViewController.m
//  MasonryHidden_Example
//
//  Created by sunny on 2018/5/31.
//  Copyright © 2018年 sunny. All rights reserved.
//

#import "SNMaonryUpdateContriantViewController.h"
#import <Masonry/Masonry.h>

@interface SNMaonryUpdateContriantViewController () {
    UIView *_subView0;
    UIView *_subView1;
}
@end

@implementation SNMaonryUpdateContriantViewController

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
    _subView0 = subView0;
    
    UIView *subView1 = [[UIView alloc] init];
    [self.view addSubview:subView1];
    [subView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@20);
        make.right.equalTo(@(-20));
        make.top.equalTo(subView0.mas_bottom).offset(30);
        make.height.equalTo(@20);
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
    _subView1.hidden = !_subView1.hidden;
    if (_subView1.hidden) {
        [_subView1 mas_updateConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(@20);
            make.right.equalTo(@(-20));
            make.top.equalTo(_subView0.mas_bottom).offset(0);
            make.height.equalTo(@0);
        }];
    } else {
        [_subView1 mas_updateConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(@20);
            make.right.equalTo(@(-20));
            make.top.equalTo(_subView0.mas_bottom).offset(30);
            make.height.equalTo(@20);
        }];
    }
}




















@end
