//
//  UIView+MasonryHidden.h
//  cardloan
//
//  Created by sunny on 2018/5/23.
//  Copyright © 2018年 renxin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Masonry.h"

@interface UIView (MasonryHidden)

@property (nonatomic, assign) BOOL masonry_hidden;

@property (nonatomic, strong) NSMutableSet<MASViewConstraint *> *canHiddenConstraintsSet;

- (void)addWillHiddenConstraint:(NSArray <MASConstraint *> *)willHiddenConstraintArray;

@end
