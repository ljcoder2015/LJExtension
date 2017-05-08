//
//  NSString+LJExtension.m
//  OldFriend
//
//  Created by (≧▽≦) on 2017/5/8.
//  Copyright © 2017年 OldFriend. All rights reserved.
//

#import "NSString+LJExtension.h"
#import <CoreText/CoreText.h>
#import <CommonCrypto/CommonDigest.h>
#import <CommonCrypto/CommonCryptor.h>

@implementation NSString (LJExtension)

- (NSString *)lj_md5 {
    const char *cStr = [self UTF8String];
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cStr, (CC_LONG)strlen(cStr), digest);// This is the md5 call
    
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    
    for (int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [output appendFormat:@"%02x", digest[i]];
    }
    return output;
}

- (NSString *)lj_urlEnljed {
    if (![self length])
        return @"";
    return [self stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
}

- (NSString *)lj_urlDeljed {
    if (![self length])
        return @"";
    
    return [self stringByRemovingPercentEncoding];
}

- (CGFloat)lj_heightWithWidth:(CGFloat)width height:(CGFloat)height font:(UIFont *)font lineBreakMode:(NSLineBreakMode)lineBreakMode {
    if (([[[UIDevice currentDevice] systemVersion] compare:@"7" options:NSNumericSearch] != NSOrderedAscending)) {
        CGSize size = [self boundingRectWithSize:CGSizeMake(width, height) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil].size;
        return size.height;
    } else {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
        CGSize size = [self sizeWithFont:font constrainedToSize:CGSizeMake(width, MAXFLOAT) lineBreakMode:lineBreakMode];
        return size.height;
#pragma clang diagnostic pop
    }
}

- (CGFloat)lj_widthWithWidth:(CGFloat)width height:(CGFloat)height font:(UIFont *)font lineBreakMode:(NSLineBreakMode)lineBreakMode {
    if (([[[UIDevice currentDevice] systemVersion] compare:@"7" options:NSNumericSearch] != NSOrderedAscending)) {
        CGSize size = [self boundingRectWithSize:CGSizeMake(width, height) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil].size;
        return size.width;
    } else {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
        CGSize size = [self sizeWithFont:font constrainedToSize:CGSizeMake(width, height) lineBreakMode:lineBreakMode];
        return size.width;
#pragma clang diagnostic pop
    }
}

- (NSInteger)lj_wordCount {
    NSUInteger i, n = [self length], l = 0,a = 0,b = 0;
    unichar c;
    for(i = 0;i < n;i++){
        c = [self characterAtIndex:i];
        if(isblank(c)) {
            b++;
        } else if(isascii(c)){
            a++;
        } else{
            l++;
        }
    }
    if(a==0 && l==0) return 0;
    return l+(NSUInteger)ceilf((CGFloat)(a+b)/2.0);
}

- (BOOL)lj_validateWithRegExp:(NSString *)regExp

{
    NSPredicate *predicate = [NSPredicate predicateWithFormat: @"SELF MATCHES %@", regExp];
    return [predicate evaluateWithObject:self];
    
}

- (CGSize)lj_sizeWithAttributes:(NSDictionary *)attrs constrainedToSize:(CGSize)size
{
    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:self
                                                                           attributes:attrs];
    CTFramesetterRef framesetter = CTFramesetterCreateWithAttributedString((__bridge CFAttributedStringRef) attributedString);
    CGSize fitSize = CTFramesetterSuggestFrameSizeWithConstraints(framesetter, CFRangeMake(0, 0), NULL, size, NULL);
    CFRelease(framesetter);
    return fitSize;
}

@end
