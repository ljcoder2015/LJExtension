//
//  UIButton+LJExtension.h
//  LovedEveryMonth
//
//  Created by ljljer on 2017/5/2.
//  Copyright © 2017年 OldFriend. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (LJExtension)

+ (instancetype)lj_buttonWithTitile:(NSString *)title
                         titleColor:(UIColor *)color
                           fontSize:(CGFloat)size
                              image:(UIImage *)image;


- (void)lj_alignImageUpAndTitleDown;
- (void)lj_alignImageUpAndTitleDownWithPadding:(CGFloat)padding;
// 不兼容auto layout，后面有时间需要重写(需要时间)
- (void)lj_alignTitleLeftAndImageRight;
- (void)lj_alignTitleLeftAndImageRightWithPadding:(CGFloat)padding;
@end
