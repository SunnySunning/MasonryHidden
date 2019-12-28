//
//  MASConstraint+Hidden.m
//
//
//  Created by sunny on 2018/5/25.
//  Copyright © 2018年 All rights reserved.
//

#import "MASConstraint+Hidden.h"
#import "UIView+MasonryHidden.h"

@implementation MASConstraint (Hidden)

- (MASConstraint * (^)(UIView *))autoHidden {
    return ^id(UIView *view) {
        NSParameterAssert(view);
        
        [view addWillHiddenConstraint:@[self]];

        return self;
    };
}

@end
