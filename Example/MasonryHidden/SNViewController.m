//
//  SNViewController.m
//  MasonryHidden
//
//  Created by sunny on 05/25/2018.
//  Copyright (c) 2018 sunny. All rights reserved.
//

#import "SNViewController.h"
#import <Masonry/Masonry.h>
#import "MASConstraint+Hidden.h"
#import "UIView+MasonryHidden.h"

@interface SNViewController () {
    UIView *_subView0;
}
@end

@implementation SNViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIView *subView0 = [[UIView alloc] init];
    [self.view addSubview:subView0];
    [subView0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@20);
        make.right.equalTo(@(-20));
        make.top.equalTo(@50).autoHidden(subView0);
        make.height.equalTo(@20).autoHidden(subView0);
    }];
    subView0.backgroundColor = [UIColor lightGrayColor];
    _subView0 = subView0;
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    _subView0.masonry_hidden = !_subView0.masonry_hidden;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}











@end
