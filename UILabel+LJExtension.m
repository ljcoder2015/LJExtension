//
//  UILabel+LJExtension.m
//  LovedEveryMonth
//
//  Created by ljcoder on 2017/5/2.
//  Copyright © 2017年 OldFriend. All rights reserved.
//

#import "UILabel+LJExtension.h"

@implementation UILabel (LJExtension)

+ (instancetype)lj_LabelWithTextColor:(UIColor *)color fontSize:(CGFloat)size {
    UILabel *label = [[UILabel alloc] init];
    label.textColor = color;
    label.font = [UIFont systemFontOfSize:size];
    return label;
}

@end
