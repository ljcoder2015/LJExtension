//
//  UIButton+LJExtension.m
//  LovedEveryMonth
//
//  Created by ljljer on 2017/5/2.
//  Copyright © 2017年 OldFriend. All rights reserved.
//

#import "UIButton+LJExtension.h"

@implementation UIButton (LJExtension)

+ (instancetype)lj_buttonWithTitile:(NSString *)title titleColor:(UIColor *)color fontSize:(CGFloat)size image:(UIImage *)image {
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.titleLabel.font = [UIFont systemFontOfSize:size];
    [button setTitleColor:color forState:UIControlStateNormal];
    if (title) {
        [button setTitle:title forState:UIControlStateNormal];
    }
    if (image) {
        [button setImage:image forState:UIControlStateNormal];
    }
    
    return button;
}

- (void)lj_alignImageUpAndTitleDown {
    [self lj_alignImageUpAndTitleDownWithPadding:5];
}

- (void)lj_alignImageUpAndTitleDownWithPadding:(CGFloat)padding {
    CGSize imageSize = self.imageView.intrinsicContentSize;
    CGSize titleSize = self.titleLabel.intrinsicContentSize;
    // lower the text and push it left so it appears centered below the image
    self.titleEdgeInsets = UIEdgeInsetsMake(0, -imageSize.width, -imageSize.height-padding*0.5, 0);
    // raise the image and push it right so it appears centered above the text
    self.imageEdgeInsets = UIEdgeInsetsMake(-titleSize.height-padding*0.5, 0, 0, -titleSize.width);
}

- (void)lj_alignTitleLeftAndImageRight {
    [self lj_alignTitleLeftAndImageRightWithPadding:5];
}

- (void)lj_alignTitleLeftAndImageRightWithPadding:(CGFloat)padding {
    CGSize imageSize = self.imageView.intrinsicContentSize;
    CGSize titleSize = self.titleLabel.intrinsicContentSize;
    // left
    self.titleEdgeInsets = UIEdgeInsetsMake(0, -imageSize.width, 0, imageSize.width+padding*0.5);
    // right
    self.imageEdgeInsets = UIEdgeInsetsMake(0, titleSize.width+padding*0.5, 0, -titleSize.width);
}

@end
