//
//  BaseCustomTableViewCell.m
//  CXCategory
//
//  Created by Felix on 2018/11/7.
//  Copyright © 2018 CXTretar. All rights reserved.
//

#import "CXBaseTableViewCell.h"

@implementation CXBaseTableViewCell

+ (instancetype)createTableViewCellWithTableView:(UITableView *)tableView {
    
    NSString *reuseIdentifier = NSStringFromClass([self class]);
    CXBaseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    
    if (!cell) {
        
        cell = [[self alloc]initWithStyle:UITableViewCellStyleDefault
                          reuseIdentifier:reuseIdentifier];
        cell.tableView = tableView;
    }
    
    return cell;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {

        [self setupCell];
        [self setupSubViews];
    }
    
    return self;
}

- (void)setupCell {
    
    
}

- (void)setupSubViews {
    
}

- (void)setData:(id)data {
    _data = data;
    [self loadContent];
}

- (void)loadContent {
    
}

+ (CGFloat)heightWithData:(id)data {
    
    return 0;
}


@end
