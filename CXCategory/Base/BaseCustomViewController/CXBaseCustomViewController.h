//
//  CXBaseCustomViewController.h
//  CXCategory
//
//  Created by Felix on 2018/12/21.
//  Copyright © 2018 CXTretar. All rights reserved.
//

#import "CXBaseViewController.h"
#import "CXControllerBaseViewConfig.h"

@interface CXBaseCustomViewController : CXBaseViewController

extern NSString * const windowAreaViewId;
extern NSString * const loadingAreaViewId;
extern NSString * const titleViewId;
extern NSString * const contentViewId;
extern NSString * const backgroundViewId;

//  level            view            frame
//  ---------------------------------------------------------------
//
//
//  high             titleView       0 x  0 x width x 64
//
//  high             contentView     0 x 64 x width x (height - 64)
//
//  normal           backgroundView  0 x  0 x width x height
//

@property (nonatomic, strong) UIView  *titleView;
@property (nonatomic, strong) UIView  *contentView;
@property (nonatomic, strong) UIView  *backgroundView;

#pragma mark - Overwrite by subClass.

/**
 *  Overwrite to config subViews.
 *
 *  @param viewsConfig Configs.
 */
- (void)makeViewsConfig:(NSMutableDictionary <NSString *, CXControllerBaseViewConfig *> *)viewsConfig;

/**
 *  Setup data source.
 */
- (void)setupDataSource;

/**
 *  Overwrite to setup titleView, contentView etc.
 */
- (void)setupSubViews;

@end

