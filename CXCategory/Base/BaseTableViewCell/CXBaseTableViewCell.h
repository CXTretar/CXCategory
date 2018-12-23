//
//  BaseCustomTableViewCell.h
//  CXCategory
//
//  Created by Felix on 2018/11/7.
//  Copyright © 2018 CXTretar. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CXBaseTableViewCell;

@protocol CXBaseTableViewCellDelegate <NSObject>

/**
 CXBaseTableViewCell    自定义代理,子类可以继承后添加新的代理方法
 
 @param cell          当前 cell
 @param data          传入数据 data
 */
- (void)baseTableViewCell:(CXBaseTableViewCell *)cell data:(id)data;

@end

@interface CXBaseTableViewCell : UITableViewCell

#pragma mark - Propeties.

/**
 当前 CXBaseTableViewCell 的代理,子类重写的时候为 id<BaseTableViewCellDelegate, xxxDelegate> delegate
 */
@property (nonatomic, weak) id<CXBaseTableViewCellDelegate> delegate;

/**
 当前 CXBaseTableCell 的数据源
 */
@property (nonatomic, weak) id data;

/**
 UITableView's indexPath.
 */
@property (nonatomic, weak) NSIndexPath *indexPath;

/**
 TableView
 */
@property (nonatomic, weak) UITableView *tableView;
/**
 Controller
 */
@property (nonatomic, weak) UIViewController *controller;

#pragma mark - method.

/**
 CXBaseTableViewCell 快速创建方式,不带type

 @param tableView    TableView
 @return             CXBaseTableViewCell
 */
+ (instancetype)createTableViewCellWithTableView:(UITableView *)tableView;

#pragma mark - Method override by subclass.

/**
 *  设置 tableViewCell 相关参数.
 */
- (void)setupCell;

/**
 *  添加子控件.
 */
- (void)setupSubViews;

/**
 *  设置数据源,类似于 - (void)setModel:(Model *)model.
 */
- (void)loadContent;

/**
 根据数据源计算 tableViewCell 的高度
 
 @param data 数据源
 @return     tableViewCell 的高度
 */
+ (CGFloat)heightWithData:(id)data;

@end

