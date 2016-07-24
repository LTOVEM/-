//
//  JTGPopMenu.m
//  JTG
//
//  Created by LTOVE on 15/11/28.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGPopMenu.h"

@implementation JTGPopMenu
//显示弹出餐单
+ (instancetype)showInRect:(CGRect)rect
{
    JTGPopMenu *menu = [[self alloc]initWithFrame:rect];
    menu.userInteractionEnabled = YES;
    
#warning 这里可以设置背景色tupian
    [[UIApplication sharedApplication].keyWindow addSubview:menu];
    return menu;
    
}

//隐藏餐单
+ (void)hiden
{
    for (UIView *popMenu in [UIApplication sharedApplication].keyWindow.subviews) {
        if ([popMenu isKindOfClass:[self class]]) {
            [popMenu removeFromSuperview];
        }
    }
}
//设置内容视图
- (void)setContentView:(UIView *)contentView
{
    [_contentView removeFromSuperview];
    _contentView = contentView;
    contentView.backgroundColor = [UIColor clearColor];
    [self addSubview:contentView];
}
- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat y = 0;
    CGFloat magin = 5;
    CGFloat x = 0;
//    CGFloat w = self.width - 2 * magin;
//    CGFloat h = self.height - y - magin;
    CGFloat w = self.width ;
    CGFloat h = self.height ;
    _contentView.frame = CGRectMake(x, y, w, h);
}



@end
