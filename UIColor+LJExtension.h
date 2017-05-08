//
//  UIColor+LJExtension.h
//  malai
//
//  Created by ljcoder on 17/2/10.
//  Copyright © 2017年 ljcoder. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (LJExtension)

+ (UIColor *)LJ_ColorWithRed:(CGFloat)r green:(CGFloat)g blue:(CGFloat)b;
+ (UIColor *)LJ_ColorWithRed:(CGFloat)r green:(CGFloat)g blue:(CGFloat)b alpha:(CGFloat)a;
+ (UIColor *)LJ_HexColor:(int)hex;
+ (UIColor *)LJ_HexColor:(int)hex alpha:(CGFloat)alpha;

// 颜色
+ (UIColor *)LJ_ColorBlue;
+ (UIColor *)LJ_ColorDeepBlue;
+ (UIColor *)LJ_ColorBlack;
+ (UIColor *)LJ_ColorRed;
+ (UIColor *)LJ_ColorSecondaryRed;
+ (UIColor *)LJ_ColorGray;
+ (UIColor *)LJ_ColorYellow;
+ (UIColor *)LJ_ColorGreen;
+ (UIColor *)LJ_ColorWhite;
+ (UIColor *)LJ_ColorBackground;
+ (UIColor *)LJ_ColorLine;
+ (UIColor *)LJ_Color333333;
+ (UIColor *)LJ_Color666666;
+ (UIColor *)LJ_Color999999;
+ (UIColor *)LJ_ColorText;
+ (UIColor *)LJ_ColorButton;
@end
