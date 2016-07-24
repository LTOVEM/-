//
//  JTGMyLoadButton.m
//  JTG
//
//  Created by LTOVE on 15/11/21.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGMyLoadButton.h"
#import "JTGBadgeView.h"
#define GWImageRidio 1
@interface JTGMyLoadButton ()



@end
@implementation JTGMyLoadButton

- (JTGBadgeView *)badgeValue
{
    if (!_badgeValue) {
        JTGBadgeView *btn = [JTGBadgeView buttonWithType:UIButtonTypeCustom];
        [self addSubview:btn];
        _badgeValue = btn;
    }
    return _badgeValue;
}


- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        //        设置字体颜色
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self setTitleColor:[UIColor orangeColor] forState:UIControlStateSelected];
        //        图片居中
        self.imageView.contentMode = UIViewContentModeCenter;
        //        设置文字居中
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        //        设置文字字体
        self.titleLabel.font = [UIFont systemFontOfSize:12];
        
    }
    return self;
}



+ (instancetype)loadButtonWithImage:(UIImage *)image heightImage:(UIImage *)heighImage title:(NSString *)title
{
    JTGMyLoadButton *btn = [self buttonWithType:UIButtonTypeCustom];
//    btn.imageView.image = image;
    [btn setImage:image forState:UIControlStateNormal];
    [btn setImage:heighImage forState:UIControlStateHighlighted];
    btn.titleLabel.text = title;
    return btn;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    //    1 imageView
    CGFloat imageX = 0;
    CGFloat imageY = 0;
    CGFloat imageW = self.bounds.size.width;
    CGFloat imageH = self.bounds.size.height * GWImageRidio;
    
    self.imageView.frame = CGRectMake(imageX, imageY, imageW, imageH);
    //    2 title
    CGFloat titleX = 0;
    CGFloat titleY = imageH - 3;
    CGFloat titleW = self.bounds.size.width;
    CGFloat titlwH = self.bounds.size.height - titleY;
    
    self.titleLabel.frame = CGRectMake(titleX, titleY, titleW, titlwH);
    //    3 设置badgeValue
    self.badgeValue.x = self.width * 0.55;
    self.badgeValue.y = self.height * 0.15;
}

@end
