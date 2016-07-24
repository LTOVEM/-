//
//  JTGViewProTooBar.m
//  JTG
//
//  Created by LTOVE on 15/11/23.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGViewProTooBar.h"
#import "JTGViewProDataModel.h"

#import "JTGDrowLable.h"

#import "MJExtension.h"

#define PriceNowFont [UIFont systemFontOfSize:14]
#define priceFont [UIFont systemFontOfSize:12]
#define tooBarHeigh 40

@interface JTGViewProTooBar ()
@property (nonatomic,weak) UILabel * priceNow;
@property (nonatomic,weak) JTGDrowLable * price;
@property (nonatomic,weak) UIButton * BuyBtn;
@property (nonatomic,copy) NSString *ids;
@property (nonatomic,copy) NSString *goodName;
@property (nonatomic,copy) NSString *pri;
@end
@implementation JTGViewProTooBar

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.size = CGSizeMake(screenW, tooBarHeigh);
//        添加所有子控件
        [self setUpAllSubviews];
//        self.backgroundColor = [UIColor purpleColor];
    }
    return self;
}

- (void)setUpAllSubviews
{
//    设置现价
    UILabel *priceNow = [[UILabel alloc]init];
    [self addSubview:priceNow];
    _priceNow = priceNow;
//    设置原价
    JTGDrowLable *price = [[JTGDrowLable alloc]init];
    [self addSubview:price];
    _price = price;
//    设置抢购按钮
    UIButton *buyBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self addSubview:buyBtn];
    _BuyBtn = buyBtn;
    
}

- (void)setDataModel:(JTGViewProDataModel *)dataModel
{
    _dataModel = dataModel;
    
//    NSLog(@"%@",dataModel.keyValues);
//    设置现价
    _ids = dataModel.id;
    _goodName = dataModel.ti;
    _pri = dataModel.fpri;
    NSString *priceN = @"￥ ";
    priceN = [priceN stringByAppendingString:dataModel.fpri];
    self.priceNow.text = priceN;
    self.priceNow.font = PriceNowFont;
    self.priceNow.textColor = GWColor(255, 0, 255, 1);
    [self.priceNow sizeToFit];
//    设置原价
    NSString *pr = @"/";
    pr = [pr stringByAppendingString:dataModel.pri];
    self.price.text = pr;
    self.price.font = priceFont;
    self.price.textColor = [UIColor lightGrayColor];
    [self.price sizeToFit];
//    设置抢购按钮
    [self.BuyBtn setTitle:@"立即抢购" forState:UIControlStateNormal];
    [self.BuyBtn setBackgroundImage:[UIImage imageNamed:@"qianggouBtn"] forState:UIControlStateNormal];
    [self.BuyBtn setAdjustsImageWhenHighlighted:NO];
    [self.BuyBtn sizeToFit];
    [self.BuyBtn addTarget:self action:@selector(btn) forControlEvents:UIControlEventTouchUpInside];
    [self layoutSubviewss];
    
}
- (void)btn{
   
    
//    if ([_delegate respondsToSelector:@selector(tabBar:didc:)]) {
//        [_delegate tabBar:self didClickButton:btn.tag];
//    }
//    cs
//    cs
    if ([_delegate respondsToSelector:@selector(JTGViewProTooBar:didClickBuyButton:goodName:pri:)]) {
        [_delegate JTGViewProTooBar:self didClickBuyButton:self.ids goodName:self.goodName pri:self.pri];
    }
}

- (void)layoutSubviewss
{
//    [super layoutSubviews];
    //    设置现价
    CGFloat x = 10;
    self.priceNow.centerY = tooBarHeigh * 0.5;
    self.priceNow.x = x;
//    self.priceNow.point = CGPointMake(x, 25);
    
    //    设置原价
    self.price.centerY = tooBarHeigh * 0.5;
    self.price.x = CGRectGetMaxX(self.priceNow.frame);
    //    设置抢购按钮
    self.BuyBtn.centerY = tooBarHeigh * 0.5;
    x = self.width - self.BuyBtn.width - 10;
    self.BuyBtn.x = x;
}

@end
