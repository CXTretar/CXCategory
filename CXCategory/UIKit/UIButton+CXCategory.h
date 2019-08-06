//
//  UIButton+CXCategory.h
//  FMS
//
//  Created by Felix on 2019/1/3.
//  Copyright © 2019 aurora. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (CXCategory)

/**
 button 快捷创建方式 文字 背景颜色
 
 @param title                      文字
 @param font                       文字大小
 @param titleColor                 文字颜色
 @param backgroundColor            背景颜色
 @param target                     target对象
 @param action                     点击事件
 @return                           button (可以为自定义UIButton)
 */
- (instancetype)cx_initWithTitle:(NSString *)title font:(UIFont *)font titleColor:(UIColor *)titleColor backgroundColor:(UIColor *)backgroundColor addTarget:(id)target action:(SEL)action;

/**
 button 快捷创建方式 文字 背景颜色 背景图片
 
 @param title                      文字
 @param font                       文字大小
 @param titleColor                 文字颜色
 @param backgroundColor            背景颜色
 @param backgroundImage            背景图片
 @param target                     target对象
 @param action                     点击事件
 @return                           button (可以为自定义UIButton)
 */
- (instancetype)cx_initWithTitle:(NSString *)title font:(UIFont *)font titleColor:(UIColor *)titleColor backgroundColor:(UIColor *)backgroundColor backgroundImage:(UIImage *)backgroundImage addTarget:(id)target action:(SEL)action;

/**
 button 快捷创建方式 All

 @param title                      文字
 @param font                       文字大小
 @param titleColor                 文字颜色
 @param highlightedColor           文字高亮状态颜色
 @param backgroundColor            背景颜色
 @param backgroundImage            背景图片
 @param highlightedBackgroundImage 背景高亮状态图片
 @param target                     target对象
 @param action                     点击事件
 @return                           button (可以为自定义UIButton)
 */
- (instancetype)cx_initWithTitle:(NSString *)title font:(UIFont *)font titleColor:(UIColor *)titleColor highlightedColor:(UIColor *)highlightedColor backgroundColor:(UIColor *)backgroundColor backgroundImage:(UIImage *)backgroundImage highlightedBackgroundImage:(UIImage *)highlightedBackgroundImage addTarget:(id)target action:(SEL)action;

@end


