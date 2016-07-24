//
//  GWTabBar.m
//  sina
//
//  Created by LTOVE on 15/11/5.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "GWTabBar.h"

#import "GWTabBarButton.h"


@interface GWTabBar ()

@property (nonatomic,strong)NSMutableArray *buttons;

@property (nonatomic,weak)UIButton *selectedButton;



@end


@implementation GWTabBar

- (NSMutableArray *)buttons
{
    if (!_buttons) {
        _buttons = [NSMutableArray array];
    }
    return _buttons;
    
}

- (void)setItmes:(NSArray *)itmes
{
    _itmes = itmes;
    
    
    
//    给按钮模型赋值  按钮的内容由模型对应决定
    for (UITabBarItem *item in _itmes) {
        GWTabBarButton *btn = [GWTabBarButton buttonWithType:UIButtonTypeCustom];
        btn.item = item;
        btn.tag = self.buttons.count;
        
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchDown];
        
        if (btn.tag == 0) {
            [self btnClick:btn];
        }
        
        [self addSubview:btn];
        
//        把按钮添加到数组
        [self.buttons addObject:btn];
    }
}
//点击tabBarbutton调用
-(void)btnClick:(UIButton *)btn
{
    _selectedButton.selected = NO;
    btn.selected = YES;
    _selectedButton = btn;
    
//    通知tabBarViewControl切换控制器
    if ([_delegate respondsToSelector:@selector(tabBar:didClickButton:)]) {
        [_delegate tabBar:self didClickButton:btn.tag];
    }
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    CGFloat w = self.bounds.size.width;
    CGFloat h = self.bounds.size.height;
    CGFloat btnX = 0;
    CGFloat btnY = 0;
    CGFloat btnW = w/(self.itmes.count );
    CGFloat btnH = h;
    int i =0;
    for (UIView *tabBarButton in self.buttons) {
//        if (i == 2) {
//            i = 3;
//        }
        btnX = btnW *i;
        tabBarButton.frame = CGRectMake(btnX, btnY, btnW, btnH);
        i++;
    }
    
    
}

@end
