//
//  GWTabBarButton.m
//  sina
//
//  Created by LTOVE on 15/11/5.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "GWTabBarButton.h"

#import "GWBadgeView.h"

#import "UIView+Frame.h"

#define GWImageRidio 1

@interface GWTabBarButton ()

@property (nonatomic,weak)GWBadgeView *badgeView;

@end

@implementation GWTabBarButton


//懒加载badgeValue
- (GWBadgeView *)badgeView
{
    if (!_badgeView) {
        GWBadgeView *btn = [GWBadgeView buttonWithType:UIButtonTypeCustom];
        [self addSubview:btn];
        _badgeView = btn;
    }
    return _badgeView;
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
        [self setAdjustsImageWhenHighlighted:NO];
    }
    return self;
}


//传递UITabbarItem给tabBarButton，给tabBarbutton内容赋值
- (void)setItem:(UITabBarItem *)item
{
    _item = item;
#warning 没看懂
    [self observeValueForKeyPath:nil ofObject:nil change:nil context:nil];
    [item addObserver:self forKeyPath:@"title" options:NSKeyValueObservingOptionNew context:nil];
    [item addObserver:self forKeyPath:@"image" options:NSKeyValueObservingOptionNew context:nil];
    [item addObserver:self forKeyPath:@"selectedImage" options:NSKeyValueObservingOptionNew context:nil];
    [item addObserver:self forKeyPath:@"badgeValue" options:NSKeyValueObservingOptionNew context:nil];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    
    [self setTitle:_item.title forState:UIControlStateNormal];
    [self setImage:_item.image forState:UIControlStateNormal];
    [self setImage:_item.selectedImage forState:UIControlStateSelected];
    
#warning 设置badgeValue
    
    self.badgeView.badgeValue = _item.badgeValue;
}

- (void)dealloc
{
    [_item removeObserver:self forKeyPath:@"badgeValue"];
    [_item removeObserver:self forKeyPath:@"image"];
    [_item removeObserver:self forKeyPath:@"selectedImage"];
    [_item removeObserver:self forKeyPath:@"title"];
}

#pragma mark -修改按钮内部子控件的Fram
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
    self.badgeView.x = self.width - self.badgeView.width - 10;
    self.badgeView.y = 0;
}


@end
