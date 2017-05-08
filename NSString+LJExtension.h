//
//  NSString+LJExtension.h
//  OldFriend
//
//  Created by (≧▽≦) on 2017/5/8.
//  Copyright © 2017年 OldFriend. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (LJExtension)

- (NSString *)lj_md5;

- (NSString *)lj_urlEnljed;
- (NSString *)lj_urlDeljed;

- (CGFloat)lj_heightWithWidth:(CGFloat)width height:(CGFloat)height font:(UIFont *)font lineBreakMode:(NSLineBreakMode)lineBreakMode;
- (CGFloat)lj_widthWithWidth:(CGFloat)width height:(CGFloat)height font:(UIFont *)font lineBreakMode:(NSLineBreakMode)lineBreakMode;

- (NSInteger)lj_wordCount;

// 正则匹配
- (BOOL)lj_validateWithRegExp:(NSString *)regExp;

// 计算富文本size
- (CGSize)lj_sizeWithAttributes:(NSDictionary *)attrs constrainedToSize:(CGSize)size;

@end
