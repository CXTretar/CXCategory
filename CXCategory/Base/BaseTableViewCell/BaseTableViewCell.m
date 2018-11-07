//
//  BaseCustomTableViewCell.m
//  CXCategory
//
//  Created by Felix on 2018/11/7.
//  Copyright © 2018 CXTretar. All rights reserved.
//

#import "BaseTableViewCell.h"

@implementation BaseTableViewCell

+ (instancetype)createCellWithTableView:(UITableView *)tableView {
    
    NSString *reuseIdentifier = NSStringFromClass([self class]);
    BaseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    if (!cell) {
        cell = [[self alloc]initWithStyle:UITableViewCellStyleDefault
                          reuseIdentifier:reuseIdentifier];
        cell.tableView = tableView;
    }
    return cell;
    
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
        [self setupUI];
    }
    return self;
}

- (void)setupUI {
    
    
}

- (void)setData:(id)data {
    _data = data;
    [self loadContent];
}

- (void)loadContent {
    
}

@end
