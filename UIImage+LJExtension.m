//
//  UIImage+LJExtension.m
//  OldFriend
//
//  Created by (≧▽≦) on 2017/5/8.
//  Copyright © 2017年 OldFriend. All rights reserved.
//

#import "UIImage+LJExtension.h"

@implementation UIImage (LJExtension)

+ (UIImage *)lj_imageWithColor:(UIColor *)color {
    return [self lj_imageWithColor:color rect:CGRectMake(0, 0, 1, 1)];
}

+ (UIImage *)lj_imageWithColor:(UIColor *)color size:(CGSize)size {
    return [self lj_imageWithColor:color rect:CGRectMake(0, 0, size.width, size.height)];
}

+ (UIImage *)lj_imageWithColor:(UIColor *)color rect:(CGRect)rect {
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, [UIScreen mainScreen].scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
