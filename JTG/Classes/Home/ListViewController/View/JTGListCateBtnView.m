//
//  JTGListCateBtnView.m
//  JTG
//
//  Created by LTOVE on 15/11/27.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGListCateBtnView.h"
#import "JTGListCateModel.h"

#import "UIImageView+WebCache.h"

#import "JTGBasicUrl.h"





@interface JTGListCateBtnView ()




@end

@implementation JTGListCateBtnView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        [self SetUpAllSubViews];
    }
    return self;
}


-(void)SetUpAllSubViews
{
//    标题
    JTGListBtn *btnTitle = [JTGListBtn buttonWithType:UIButtonTypeCustom];
    _btnTitle = btnTitle;
    [self addSubview:btnTitle];
//    排序
    UIButton *btnOrder = [UIButton buttonWithType:UIButtonTypeCustom];
    _btnOrder = btnOrder;
//    [btnOrder setImage:[UIImage imageNamed:@"sort_icon"] forState:UIControlStateNormal];
    [btnOrder setTitle:@"喜欢就下单哦" forState:UIControlStateNormal];
    [self addSubview:btnOrder];
    [self.btnOrder addTarget:self action:@selector(BtnClick:) forControlEvents:UIControlEventTouchDown];
    [self.btnTitle addTarget:self action:@selector(BtnClick:) forControlEvents:UIControlEventTouchDown];
    btnTitle.tag = 0;
    btnOrder.tag = 1;
}

- (void)setModel:(JTGListCateModel *)model
{
    [self.btnTitle setTitle:model.ti forState:UIControlStateNormal];
//    UIImageView * imageV = [[UIImageView alloc]init];
    NSString *urlStr = [[JTGBasicUrl url].URLString stringByAppendingString:model.imgs];
//    self.btnTitle.images = urlStr;
    self.btnTitle.pic = urlStr;
//    [self.btnTitle setTitle:model.ti forState:UIControlStateNormal];
   
}

- (void)layoutSubviews
{
//    表题
    self.btnTitle.frame = CGRectMake(0, 0, self.width/2, self.height);
    self.btnOrder.frame = CGRectMake(CGRectGetMaxX(self.btnTitle.frame), 0, self.width/2, self.height);
    
}

-(void)BtnClick:(UIButton *)btn
{

//    
//    if ([_delegate respondsToSelector:@selector(listCateBtnView:btnClick:)]) {
//        [_delegate listCateBtnView:self btnClick:btn];
//    }
}

@end
