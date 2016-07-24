//
//  JTGProfileTwoCellView.m
//  JTG
//
//  Created by LTOVE on 15/11/21.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGProfileTwoCellView.h"

#import "JTGMyLoadButton.h"
#import "JTGBadgeView.h"

@interface JTGProfileTwoCellView ()

@property (nonatomic,strong) NSMutableArray * buttons;

@property (nonatomic,strong) NSMutableArray * badgeValues;
@end
@implementation JTGProfileTwoCellView

- (NSMutableArray *)badgeValues
{
    if (!_badgeValues) {
        _badgeValues = [NSMutableArray array];
    }
    return _badgeValues;
}

- (NSMutableArray *)buttons
{
    if (!_buttons) {
        _buttons = [NSMutableArray array];
    }
    return _buttons;
}

 - (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.width = [UIScreen mainScreen].bounds.size.width;
        self.height = 90;
//        添加按钮
        [self setUpButtons];
    }
    return self;
}

- (void)setListCount:(NSArray *)listCount
{
    _listCount = listCount;
    
    self.badgeValues = (NSMutableArray *)listCount;
    [self SetUpBadgeValues];
}

- (void)SetUpBadgeValues
{
    for (int i =0; i< self.buttons.count; i++) {
        JTGMyLoadButton *btn = self.buttons[i];
        btn.badgeValue.badgeValue = self.badgeValues[i];
    }
}
- (void)setUpButtons
{
//    待付款
    JTGMyLoadButton *btnPay = [JTGMyLoadButton loadButtonWithImage:[UIImage imageNamed:@"My_loadPay_normal"] heightImage:[UIImage imageNamed:@"My_loadPay_Highlight"] title:@"待付款"];
    [self btnConmon:btnPay];
//    待使用
    JTGMyLoadButton *btnUse = [JTGMyLoadButton loadButtonWithImage:[UIImage imageNamed:@"My_loadUse_normal"] heightImage:[UIImage imageNamed:@"My_loadUse_Highlight"] title:@"待使用"];
    [self btnConmon:btnUse];
//    待评价
    JTGMyLoadButton *btnPJ = [JTGMyLoadButton loadButtonWithImage:[UIImage imageNamed:@"My_loadPingjia_normal"] heightImage:[UIImage imageNamed:@"My_loadPingjia_Highlight"] title:@"待评价"];
    [self btnConmon:btnPJ];
    
}

- (void)btnConmon:(JTGMyLoadButton *)btn
{
    btn.tag = self.buttons.count;
//    self.badgeValues[btn.tag] = btn.badgeValue.badgeValue;
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchDown];
    [self addSubview:btn];
    
    [self.buttons addObject:btn];
}
#warning 按钮点击
- (void)btnClick:(JTGMyLoadButton *)btn
{
    NSLog(@"%ld",(long)btn.tag);
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    CGFloat w = self.bounds.size.width;
    CGFloat h = self.bounds.size.height;
    CGFloat btnX = 0;
    CGFloat btnY = 0;
    CGFloat btnW = w/(self.buttons.count);
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
