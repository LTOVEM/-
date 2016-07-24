//
//  UIView+Frame.m
//  JTG
//
//  Created by LTOVE on 15/11/18.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "UIView+Frame.h"


@implementation UIView (Frame)

- (void)setCenterX:(CGFloat)centerX
{
    CGPoint point = self.center;
    point.x = centerX;
    self.center = point;
}
- (CGFloat)centerX
{
    return self.center.x;
}

- (void)setCenterY:(CGFloat)centerY
{
    CGPoint point = self.center;
    point.y = centerY;
    self.center = point;
}

- (CGFloat)centerY
{
    return self.center.y;
}
- (void)setSize:(CGSize)size
{
    CGRect fram = self.frame;
    fram.size = size;
    self.frame = fram;
}

- (CGSize)size
{
    return self.frame.size;
}

- (void)setX:(CGFloat)x
{
    CGRect fram = self.frame;
    fram.origin.x = x;
    self.frame = fram;
}
- (CGFloat)x
{
    return self.frame.origin.x;
}

- (void)setY:(CGFloat)y
{
    CGRect fram = self.frame;
    fram.origin.y = y;
    self.frame = fram;
}

 - (CGFloat)y
{
    return self.frame.origin.y;
}

- (void)setWidth:(CGFloat)width
{
    CGRect fram = self.frame;
    fram.size.width = width;
    self.frame = fram;
}

- (CGFloat)width
{
    return self.frame.size.width;
}
- (void)setHeight:(CGFloat)height
{
    CGRect fram = self.frame;
    fram.size.height = height;
    self.frame = fram;
}
- (CGFloat)height
{
    return self.frame.size.height;
}

- (void)setPoint:(CGPoint)point
{
    CGRect fram = self.frame;
    fram.origin = point;
    self.frame = fram;
}
- (CGPoint)point
{
    return  self.frame.origin;
}


@end
