//
//  CXBaseTableHeaderFooterView.h
//  CXCategory
//
//  Created by Felix on 2018/11/7.
//  Copyright © 2018 CXTretar. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
   CXBaseTableHeaderFooterView 类型,默认为头部

 - CXBaseTableHeaderFooterViewTypeHeader: UITableView's section 头部
 - CXBaseTableHeaderFooterViewTypeFooter: UITableView's section 尾部
 */
typedef NS_ENUM(NSUInteger, CXBaseTableHeaderFooterViewType) {
    CXBaseTableHeaderFooterViewTypeHeader,
    CXBaseTableHeaderFooterViewTypeFooter,
};

@class CXBaseTableHeaderFooterView;

@protocol CXBaseTableHeaderFooterViewDelegate <NSObject>

@optional

/**
 CXBaseTableHeaderFooterView   自定义代理,子类可以继承后添加新的代理方法

 @param baseHeaderFooterView 当前 CXBaseTableHeaderFooterView
 @param data                 传入数据 data
 */
- (void)baseHeaderFooterView:(CXBaseTableHeaderFooterView *)baseHeaderFooterView data:(id)data;

@end

@interface CXBaseTableHeaderFooterView : UITableViewHeaderFooterView

#pragma mark - Propeties.

/**
 当前 CXBaseTableHeaderFooterView 的代理,子类重写的时候为 id<CXBaseTableHeaderFooterViewDelegate, xxxDelegate> delegate
 */
@property (nonatomic, weak) id<CXBaseTableHeaderFooterViewDelegate> delegate;

/**
 CXBaseTableHeaderFooterView 类型,默认为头部
 */
@property (nonatomic, assign) CXBaseTableHeaderFooterViewType tableHeaderFooterViewType;

/**
 当前 CXBaseTableHeaderFooterView 的数据源
 */
@property (nonatomic, weak) id data;

/**
 *  UITableView's section.
 */
@property (nonatomic) NSInteger section;

/**
 *  TableView.
 */
@property (nonatomic, weak) UITableView *tableView;

/**
 *  Controller.
 */
@property (nonatomic, weak) UIViewController *controller;

#pragma mark - method.

/**
 CXBaseTableHeaderFooterView 快速创建方式,不带type

 @param tableView TableView
 @return          CXBaseTableHeaderFooterView
 */
+ (instancetype)createHeaderFooterViewWithTableView:(UITableView *)tableView;

/**
 CXBaseTableHeaderFooterView 快速创建方式,带type

 @param tableView TableView
 @param type      CXBaseTableHeaderFooterView
 @return          CXBaseTableHeaderFooterViewType
 */
+ (instancetype)createHeaderFooterViewWithTableView:(UITableView *)tableView headerFooterViewType:(CXBaseTableHeaderFooterViewType)type;

/**
 *  Register to tableView with the reuseIdentifier you specified.
 *
 *  @param tableView       TableView.
 *  @param reuseIdentifier The cell reuseIdentifier.
 */
+ (void)registerToTableView:(UITableView *)tableView reuseIdentifier:(NSString *)reuseIdentifier;

/**
 *  Register to tableView with the The class name.
 *
 *  @param tableView       TableView.
 */
+ (void)registerToTableView:(UITableView *)tableView;

#pragma mark - Method override by subclass.

/**
 *  设置 tableHeaderFooterView 相关参数.
 */
- (void)setupHeaderFooterView;

/**
 *  添加子控件.
 */
- (void)setupSubViews;

/**
 *  设置数据源,类似于 - (void)setModel:(Model *)model.
 */
- (void)loadContent;

/**
 根据数据源计算 tableHeaderFooterView 的高度

 @param data 数据源
 @return     tableHeaderFooterView 的高度
 */
+ (CGFloat)heightWithData:(id)data;

@end

