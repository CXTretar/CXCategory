//
//  CXBaseCustomViewController.m
//  CXCategory
//
//  Created by Felix on 2018/12/21.
//  Copyright © 2018 CXTretar. All rights reserved.
//

#import "CXBaseCustomViewController.h"
#import "DeviceInfo.h"

@interface CXBaseCustomViewController ()<UIGestureRecognizerDelegate>

@property (nonatomic, strong) NSMutableDictionary <NSString *, CXControllerBaseViewConfig *> *viewsConfig;

@end

@implementation CXBaseCustomViewController

NSString * const titleViewId       = @"titleViewId";
NSString * const contentViewId     = @"contentViewId";
NSString * const backgroundViewId  = @"backgroundViewId";

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    [self initViewsConfigs];
    [self makeViewsConfig:self.viewsConfig];
    [self buildConfigViews];
    [self setupSubViews];
    [self setupDataSource];
}

- (void)initViewsConfigs {
    
    self.viewsConfig = [[NSMutableDictionary alloc] init];
    CGFloat width    = [UIScreen mainScreen].bounds.size.width;
    CGFloat height   = [UIScreen mainScreen].bounds.size.height;
    
    if (DeviceInfo.isFringeScreen == YES) {

//        CGFloat iPhoneXHeight = StatusBarAndNavigationBarHeight + DeviceInfo.fringeScreenTopSafeHeight;
//
//        ControllerBaseViewConfig *titleViewConfig   = viewsConfig[titleViewId];
//        ControllerBaseViewConfig *contentViewConfig = viewsConfig[contentViewId];
//
//        titleViewConfig.frame   = CGRectMake(0, 0, Width, iPhoneXHeight);
//        contentViewConfig.frame = CGRectMake(0, iPhoneXHeight, Width, Height - iPhoneXHeight);
    }
    
    // backgroundView config.
    {
        CXControllerBaseViewConfig *config   = [CXControllerBaseViewConfig new];
        config.exist                       = YES;
        config.frame                       = CGRectMake(0, 0, width, height);
        config.backgroundColor             = [UIColor whiteColor];
        self.viewsConfig[backgroundViewId] = config;
    }
    
    // contentView config.
    {
        CXControllerBaseViewConfig *config = [CXControllerBaseViewConfig new];
        config.exist                     = YES;
        config.frame                     = CGRectMake(0, 64, width, height - 64);
        config.backgroundColor           = [UIColor clearColor];
        self.viewsConfig[contentViewId]  = config;
    }
    
    // titleView config.
    {
        CXControllerBaseViewConfig *config = [CXControllerBaseViewConfig new];
        config.exist                       = YES;
        config.frame                       = CGRectMake(0, 0, width, 64.f);
        config.backgroundColor             = [UIColor clearColor];
        self.viewsConfig[titleViewId]      = config;
    }
    
}

- (void)buildConfigViews {
    
    // backgroundView
    {
        CXControllerBaseViewConfig *config = self.viewsConfig[backgroundViewId];
        if (config && config.exist) {
            
            UIView *view         = [[UIView alloc] initWithFrame:config.frame];
            view.backgroundColor = config.backgroundColor;
            [self.view addSubview:view];
            self.backgroundView  = view;
        }
    }
    
    // contentView
    {
        CXControllerBaseViewConfig *config = self.viewsConfig[contentViewId];
        if (config && config.exist) {
            
            UIView *view         = [[UIView alloc] initWithFrame:config.frame];
            view.backgroundColor = config.backgroundColor;
            [self.view addSubview:view];
            self.contentView     = view;
        }
    }
    
    // titleView
    {
        CXControllerBaseViewConfig *config = self.viewsConfig[titleViewId];
        if (config && config.exist) {
            
            UIView *view         = [[UIView alloc] initWithFrame:config.frame];
            view.backgroundColor = config.backgroundColor;
            [self.view addSubview:view];
            self.titleView       = view;
        }
    }
}

#pragma mark - Overwrite by subclass.

- (void)makeViewsConfig:(NSMutableDictionary <NSString *, CXControllerBaseViewConfig *> *)viewsConfig {
    
}

- (void)setupSubViews {
    
}

- (void)setupDataSource {
    
}



@end
