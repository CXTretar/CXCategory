//
//  UILabel+CXCategory.h
//  FMS
//
//  Created by Felix on 2019/1/3.
//  Copyright © 2019 aurora. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (CXCategory)

/**
 label 快捷创建方法 文字 字体颜色
 
 @param text            文字
 @param font            字体
 @param textColor       字体颜色
 @return                label (可以为自定义UILabel)
 */
- (instancetype)cx_initWithText:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor;

/**
 label 快捷创建方法 文字 背景颜色 横向对齐方式
 
 @param text            文字
 @param font            字体
 @param textColor       字体颜色
 @param backgroundColor 背景颜色
 @param textAlignment   横向对齐
 @return                label (可以为自定义UILabel)
 */
- (instancetype)cx_initWithText:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor backgroundColor:(UIColor *)backgroundColor textAlignment:(NSTextAlignment)textAlignment;

/**
 label 快捷创建方法 文字 背景颜色 横向对齐方式 圆角

 @param text            文字
 @param font            字体
 @param textColor       字体颜色
 @param backgroundColor 背景颜色
 @param textAlignment   横向对齐
 @param numberOfLines   行数
 @param cornerRadius    圆角
 @return                label (可以为自定义UILabel)
 */
- (instancetype)cx_initWithText:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor backgroundColor:(UIColor *)backgroundColor textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)numberOfLines cornerRadius:(CGFloat)cornerRadius;

@end

