//
//  BaseTableHeaderFooterView.m
//  CXCategory
//
//  Created by Felix on 2018/11/7.
//  Copyright © 2018 CXTretar. All rights reserved.
//

#import "CXBaseTableHeaderFooterView.h"

@implementation CXBaseTableHeaderFooterView

+ (instancetype)createHeaderFooterViewWithTableView:(UITableView *)tableView {
    
   return [self createHeaderFooterViewWithTableView:tableView headerFooterViewType:CXBaseTableHeaderFooterViewTypeHeader];
}

+ (instancetype)createHeaderFooterViewWithTableView:(UITableView *)tableView headerFooterViewType:(CXBaseTableHeaderFooterViewType)type {
    
    NSString *reuseIdentifier = NSStringFromClass([self class]);
    CXBaseTableHeaderFooterView *headerFooterView = [tableView dequeueReusableHeaderFooterViewWithIdentifier:reuseIdentifier];
    
    if (!headerFooterView) {
        
        headerFooterView = [[self alloc]initWithReuseIdentifier:reuseIdentifier];
        headerFooterView.tableView = tableView;
        headerFooterView.tableHeaderFooterViewType = type;
    }
    return headerFooterView;
}


- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier {
    
    if (self = [super initWithReuseIdentifier:reuseIdentifier]) {
        
        [self setupHeaderFooterView];
        [self setupSubViews];
    }
    
    return self;
}

+ (void)registerToTableView:(UITableView *)tableView reuseIdentifier:(NSString *)reuseIdentifier {
    
    NSString *identifier = reuseIdentifier.length <= 0 ? NSStringFromClass([self class]) : reuseIdentifier;
    [tableView registerClass:[self class] forHeaderFooterViewReuseIdentifier:identifier];
}

+ (void)registerToTableView:(UITableView *)tableView {
    
    [tableView registerClass:[self class] forHeaderFooterViewReuseIdentifier:NSStringFromClass([self class])];
}

- (void)setData:(id)data {
    _data = data;
    [self loadContent];
}

- (void)setupHeaderFooterView {
    
}

- (void)setupSubViews {
    
}

- (void)loadContent {
    
}

+ (CGFloat)heightWithData:(id)data {
    
    return 0;
}

@end
