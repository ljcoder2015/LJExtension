//
//  UITextField+LJExtension.h
//  LovedEveryMonth
//
//  Created by ljcoder on 2017/5/2.
//  Copyright © 2017年 OldFriend. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (LJExtension)

+ (instancetype)lj_textFieldWithPlaceholder:(NSString *)placeholder;
+ (instancetype)lj_textFieldWithPlaceholder:(NSString *)placeholder leftView:(UIView *)leftView;
+ (instancetype)lj_textFieldWithPlaceholder:(NSString *)placeholder leftView:(UIView *)leftView rightView:(UIView *)rightView;

@end
