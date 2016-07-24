//
//  UIView+Frame.h
//  JTG
//
//  Created by LTOVE on 15/11/18.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Frame)

@property (nonatomic ,assign) CGFloat x;
@property (nonatomic ,assign) CGFloat y;
@property (nonatomic ,assign) CGFloat width;
@property (nonatomic ,assign) CGFloat height;
@property (nonatomic ,assign) CGFloat centerX;
@property (nonatomic ,assign) CGFloat centerY;

@property (nonatomic ,assign) CGPoint point;

@property (nonatomic ,assign) CGSize size;
@end
