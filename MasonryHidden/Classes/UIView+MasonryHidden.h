//
//  UIView+MasonryHidden.h
//
//
//  Created by sunny on 2018/5/23.
//  Copyright © 2018年 All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Masonry/Masonry.h>

typedef void(^UIViewMasonryHiddenCallback)(BOOL masonry_hidden);

@interface UIView (MasonryHidden)

@property (nonatomic, assign) BOOL masonry_hidden;

@property (nonatomic, strong) NSMutableSet<MASViewConstraint *> *canHiddenConstraintsSet;

@property (nonatomic, copy) UIViewMasonryHiddenCallback masonryHiddenCallback;

- (void)addWillHiddenConstraint:(NSArray <MASConstraint *> *)willHiddenConstraintArray;

@end
