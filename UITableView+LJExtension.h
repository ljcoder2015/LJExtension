//
//  UITableView+LJExtension.h
//  OldFriend
//
//  Created by (≧▽≦) on 2017/5/2.
//  Copyright © 2017年 OldFriend. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (LJExtension)

+ (instancetype)lj_tableViewWithType:(UITableViewStyle)style dataSource:(id<UITableViewDataSource>)dataSource delegate:(id<UITableViewDelegate>)delegate;

@end
