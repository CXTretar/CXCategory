//
//  UILabel+CXCategory.m
//  FMS
//
//  Created by Felix on 2019/1/3.
//  Copyright © 2019 aurora. All rights reserved.
//

#import "UILabel+CXCategory.h"

@implementation UILabel (CXCategory)

- (instancetype)cx_initWithText:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor {
    
    return [self cx_initWithText:text font:font textColor:textColor backgroundColor:[UIColor clearColor] textAlignment:NSTextAlignmentLeft numberOfLines:1 cornerRadius:0];
}

- (instancetype)cx_initWithText:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor backgroundColor:(UIColor *)backgroundColor textAlignment:(NSTextAlignment)textAlignment {
    
    return [self cx_initWithText:text font:font textColor:textColor backgroundColor:backgroundColor textAlignment:textAlignment numberOfLines:1 cornerRadius:0];
}

- (instancetype)cx_initWithText:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor backgroundColor:(UIColor *)backgroundColor textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)numberOfLines cornerRadius:(CGFloat)cornerRadius {
#pragma clang diagnostic push
#pragma clang diagnostic ignored   "-Wunused-value"
    //未使用的变量
    [self init];
#pragma clang diagnostic pop
    self.font = font;
    self.text = text;
    self.textColor = textColor;
    self.backgroundColor = backgroundColor;
    self.textAlignment = textAlignment;
    self.numberOfLines = numberOfLines;
    self.layer.cornerRadius = cornerRadius;
    [self sizeToFit];
    return self;
}

@end
