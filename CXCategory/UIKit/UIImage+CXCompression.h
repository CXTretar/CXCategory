//
//  UIImage+CXCompression.h
//  CXCategory
//
//  Created by Felix on 2019/1/4.
//  Copyright © 2019 CXTretar. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (CXCompression)

/**
 压缩图片精确至指定Data大小, 只需循环3次, 并且保持图片不失真

 @param image     原图
 @param maxLength 目标图片Data大小
 @return          压缩后的新图
 */
+ (UIImage *)cx_compressImage:(UIImage *)image toByte:(NSUInteger)maxLength;

@end

NS_ASSUME_NONNULL_END
