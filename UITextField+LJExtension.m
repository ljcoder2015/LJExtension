//
//  UITextField+LJExtension.m
//  LovedEveryMonth
//
//  Created by ljcoder on 2017/5/2.
//  Copyright © 2017年 OldFriend. All rights reserved.
//

#import "UITextField+LJExtension.h"

@implementation UITextField (LJExtension)

+ (instancetype)lj_textFieldWithPlaceholder:(NSString *)placeholder {
    return [UITextField lj_textFieldWithPlaceholder:placeholder leftView:nil rightView:nil];
}

+ (instancetype)lj_textFieldWithPlaceholder:(NSString *)placeholder leftView:(UIView *)leftView {
    return [UITextField lj_textFieldWithPlaceholder:placeholder leftView:leftView rightView:nil];
}

+ (instancetype)lj_textFieldWithPlaceholder:(NSString *)placeholder leftView:(UIView *)leftView rightView:(UIView *)rightView {

    UITextField *textField = [[UITextField alloc] init];
    textField.placeholder = placeholder;
    
    if (leftView) {
        textField.leftView = leftView;
        textField.leftViewMode = UITextFieldViewModeAlways;
    }
    
    if (rightView) {
        textField.rightView = rightView;
        textField.rightViewMode = UITextFieldViewModeAlways;
    }
    
    return textField;
}
@end
