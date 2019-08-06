//
//  CXBaseViewController.h
//  CXCategory
//
//  Created by Felix on 2018/12/21.
//  Copyright © 2018 CXTretar. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CXBaseViewController;

@protocol CXBaseViewControllerDelegate <NSObject>

@optional

/**
 *  The BaseViewController's data.
 *
 *  @param controller Kind of BaseCustomViewController.
 *  @param data       The data.
 */
- (void)baseCustomViewController:(__kindof CXBaseViewController *)controller data:(id)data;

@end

@interface CXBaseViewController : UIViewController

/**
 *  The CXBaseViewController's delegate.
 */
@property (nonatomic, weak) id<CXBaseViewControllerDelegate> delegate;

/**
 *  The CXBaseViewController's event callback block.
 */
@property (nonatomic, copy) void (^controllerEventCallback)(__kindof CXBaseViewController *controller, id event);

/**
 *  You can only use this method when the current controller is an UINavigationController's rootViewController.
 */
- (void)useInteractivePopGestureRecognizer;

/**
 *  You can use this property when this controller is pushed by an UINavigationController.
 */
@property (nonatomic)  BOOL  enableInteractivePopGestureRecognizer;

/**
 *  If this controller is managed by an UINavigationController, you can use this method to pop.
 *
 *  @param animated Animated or not.
 */
- (void)popViewControllerAnimated:(BOOL)animated;

/**
 *  If this controller is managed by an UINavigationController, you can use this method to pop to the rootViewController.
 *
 *  @param animated Animated or not.
 */
- (void)popToRootViewControllerAnimated:(BOOL)animated;

@end

