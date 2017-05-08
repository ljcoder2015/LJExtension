//
//  UITableView+LJExtension.m
//  OldFriend
//
//  Created by (≧▽≦) on 2017/5/2.
//  Copyright © 2017年 OldFriend. All rights reserved.
//

#import "UITableView+LJExtension.h"

@implementation UITableView (LJExtension)

+ (instancetype)lj_tableViewWithType:(UITableViewStyle)style dataSource:(id<UITableViewDataSource>)dataSource delegate:(id<UITableViewDelegate>)delegate {
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectZero style:style];
    tableView.dataSource = dataSource;
    tableView.delegate = delegate;
    tableView.separatorColor = [UIColor LJ_ColorLine];
    tableView.separatorInset = UIEdgeInsetsMake(0, -10, 0, 0);
    return tableView;
}

@end
