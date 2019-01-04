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

+ (UIImage *)cx_compressImage:(UIImage *)image toByte:(NSUInteger)maxLength

@end

NS_ASSUME_NONNULL_END
