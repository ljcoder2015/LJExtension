//
//  UIColor+LJExtension.m
//  malai
//
//  Created by ljcoder on 17/2/10.
//  Copyright © 2017年 ljcoder. All rights reserved.
//

#import "UIColor+LJExtension.h"

@implementation UIColor (LJExtension)

+ (UIColor *)LJ_ColorWithRed:(CGFloat)r green:(CGFloat)g blue:(CGFloat)b {
    return [UIColor LJ_ColorWithRed:r green:g blue:b alpha:1.0];
}

+ (UIColor *)LJ_ColorWithRed:(CGFloat)r green:(CGFloat)g blue:(CGFloat)b alpha:(CGFloat)a {
    return [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a];
}

/**
 通过16进制设置颜色

 @param hex 颜色值
 @return 颜色
 */
+ (UIColor *)LJ_HexColor:(int)hex {
    return [UIColor LJ_HexColor:hex alpha:1];
}

+ (UIColor *)LJ_HexColor:(int)hex alpha:(CGFloat)alpha {
    return [UIColor colorWithRed:((float)((hex & 0xFF0000) >> 16))/255.0 green:((float)((hex & 0xFF00) >> 8))/255.0 blue:((float)(hex & 0xFF))/255.0 alpha:alpha];
}
/// 蓝
+ (UIColor *)LJ_ColorBlue {
    return [UIColor LJ_ColorWithRed:109 green:207 blue:246];
}
/// 深蓝
+ (UIColor *)LJ_ColorDeepBlue {
    return [UIColor LJ_HexColor:0x6dcff6];
}
/// 黑
+ (UIColor *)LJ_ColorBlack {
    return [UIColor LJ_HexColor:0x1e2223];
}
/// 红
+ (UIColor *)LJ_ColorRed {
    return [UIColor LJ_ColorWithRed:255 green:28 blue:28];
}
/// 辅色，红
+ (UIColor *)LJ_ColorSecondaryRed {
    return [UIColor LJ_ColorWithRed:233 green:59 blue:83];
}
/// 辅色，灰
+ (UIColor *)LJ_ColorGray {
    return [UIColor LJ_HexColor:0xe1e1e1];
}
/// 辅色，黄
+ (UIColor *)LJ_ColorYellow {
    return [UIColor LJ_HexColor:0xf5b906];
}
/// 绿色背景按钮
+ (UIColor *)LJ_ColorButton {
   return [UIColor LJ_ColorWithRed:67 green:158 blue:68];
}
/// 辅色，绿
+ (UIColor *)LJ_ColorGreen {
    return [UIColor LJ_HexColor:0x336633];
}
/// 辅色，白
+ (UIColor *)LJ_ColorWhite {
    return [UIColor LJ_HexColor:0xfafafa];
}
/// 背景
+ (UIColor *)LJ_ColorBackground {
    return [UIColor LJ_HexColor:0xeeeeee];
}
/// 线
+ (UIColor *)LJ_ColorLine {
    return [UIColor LJ_HexColor:0xdfdfdf];
}
/**灰色**/
+ (UIColor *)LJ_Color333333 {
    return [UIColor LJ_HexColor:0x333333];
}

+ (UIColor *)LJ_Color666666 {
    return [UIColor LJ_HexColor:0x666666];
}

+ (UIColor *)LJ_Color999999 {
    return [UIColor LJ_HexColor:0x999999];
}

+ (UIColor *)LJ_ColorText {
    return [UIColor LJ_HexColor:0x121B1F];
}

@end
