//
//  UIButton+CXCategory.m
//  FMS
//
//  Created by Felix on 2019/1/3.
//  Copyright © 2019 aurora. All rights reserved.
//

#import "UIButton+CXCategory.h"

@implementation UIButton (CXCategory)

- (instancetype)cx_initWithTitle:(NSString *)title font:(UIFont *)font titleColor:(UIColor *)titleColor backgroundColor:(UIColor *)backgroundColor addTarget:(id)target action:(SEL)action {
    
    return [self cx_initWithTitle:title font:font titleColor:titleColor highlightedColor:titleColor backgroundColor:backgroundColor backgroundImage:nil highlightedBackgroundImage:nil addTarget:target action:action];
}

- (instancetype)cx_initWithTitle:(NSString *)title font:(UIFont *)font titleColor:(UIColor *)titleColor backgroundColor:(UIColor *)backgroundColor backgroundImage:(UIImage *)backgroundImage addTarget:(nullable id)target action:(SEL)action {
    
    return [self cx_initWithTitle:title font:font titleColor:titleColor highlightedColor:titleColor backgroundColor:backgroundColor backgroundImage:backgroundImage highlightedBackgroundImage:nil addTarget:target action:action];
}

- (instancetype)cx_initWithTitle:(NSString *)title font:(UIFont *)font titleColor:(UIColor *)titleColor highlightedColor:(UIColor *)highlightedColor backgroundColor:(UIColor *)backgroundColor backgroundImage:(UIImage *)backgroundImage highlightedBackgroundImage:(UIImage *)highlightedBackgroundImage addTarget:(nullable id)target action:(SEL)action {
#pragma clang diagnostic push
#pragma clang diagnostic ignored   "-Wunused-value"
    //未使用的变量
    [self init];
#pragma clang diagnostic pop
    [self setTitle:title forState:UIControlStateNormal];
    [self setTitleColor:titleColor forState:UIControlStateNormal];
    [self setTitleColor:highlightedColor forState:UIControlStateHighlighted];
    self.backgroundColor = backgroundColor;
    if (backgroundImage) {
        [self setBackgroundImage:backgroundImage forState:UIControlStateNormal];
    }
    if (highlightedBackgroundImage) {
        [self setBackgroundImage:highlightedBackgroundImage forState:UIControlStateHighlighted];
    }
    if (target && action) {
        [self addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }
    
    [self sizeToFit];
    return self;
    
}


@end
