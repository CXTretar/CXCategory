//
//  CXBaseViewController.m
//  CXCategory
//
//  Created by Felix on 2018/12/21.
//  Copyright © 2018 CXTretar. All rights reserved.
//

#import "CXBaseViewController.h"

@interface CXBaseViewController ()<UIGestureRecognizerDelegate>

@end

@implementation CXBaseViewController

- (void)useInteractivePopGestureRecognizer {
    
    self.navigationController.interactivePopGestureRecognizer.delegate = self;
}

- (void)popViewControllerAnimated:(BOOL)animated {
    
    [self.navigationController popViewControllerAnimated:animated];
}

- (void)popToRootViewControllerAnimated:(BOOL)animated {
    
    [self.navigationController popToRootViewControllerAnimated:animated];
}

- (void)dealloc {
    
#ifdef DEBUG
    
    printf("[⚠️] Did released the %s.\n", NSStringFromClass(self.class).UTF8String);
    
#endif
}

#pragma mark - Overwrite setter & getter.

@synthesize enableInteractivePopGestureRecognizer = _enableInteractivePopGestureRecognizer;

- (void)setEnableInteractivePopGestureRecognizer:(BOOL)enableInteractivePopGestureRecognizer {
    
    _enableInteractivePopGestureRecognizer                            = enableInteractivePopGestureRecognizer;
    self.navigationController.interactivePopGestureRecognizer.enabled = enableInteractivePopGestureRecognizer;
}

- (BOOL)enableInteractivePopGestureRecognizer {
    
    return _enableInteractivePopGestureRecognizer;
}

@end
