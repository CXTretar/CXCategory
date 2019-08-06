//
//  ViewController.m
//  CXCategory
//
//  Created by Felix on 2018/10/29.
//  Copyright © 2018 CXTretar. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+CXCategory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat width    = [UIScreen mainScreen].bounds.size.width;
    CGFloat height   = [UIScreen mainScreen].bounds.size.height;
    NSLog(@"%f -- %f", width, height);
    
    // Do any additional setup after loading the view, typically from a nib.
}


@end
