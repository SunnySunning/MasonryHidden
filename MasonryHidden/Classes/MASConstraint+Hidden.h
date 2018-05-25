//
//  MASConstraint+Hidden.h
//  cardloan
//
//  Created by sunny on 2018/5/25.
//  Copyright © 2018年 renxin. All rights reserved.
//

#import <Masonry/MASConstraint.h>

@interface MASConstraint (Hidden)

- (MASConstraint * (^)(UIView *))autoHidden;

@end
