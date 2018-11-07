//
//  BaseCustomTableViewCell.h
//  CXCategory
//
//  Created by Felix on 2018/11/7.
//  Copyright © 2018 CXTretar. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BaseTableViewCell;

@protocol BaseTableViewCellDelegate <NSObject>

- (void)baseTableViewCell:(BaseTableViewCell *)cell event:(id)event;

@end

@interface BaseTableViewCell : UITableViewCell

@property (nonatomic, weak) NSIndexPath *indexPath;

@property (nonatomic, weak) id data;

@property (nonatomic, weak) UIViewController *controller;

@property (nonatomic, weak) UITableView *tableView;

///创建自定义cell
+ (instancetype _Nullable )createCellWithTableView:(UITableView *_Nullable)tableView;

- (void)setupUI;

- (void)loadContent;

@end

