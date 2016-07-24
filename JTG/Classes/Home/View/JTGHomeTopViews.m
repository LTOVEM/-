//
//  JTGHomeTopViews.m
//  JTG
//
//  Created by LTOVE on 15/11/26.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGHomeTopViews.h"

#import "JTGListMidiCeollectionView.h"
#import "JTGHomeTopView.h"

#import "UIImageView+WebCache.h"
#import "JTGListCateAdModel.h"

@interface JTGHomeTopViews ()<JTGListMidCellViewDelegate>


@property (nonatomic,weak) JTGListMidiCeollectionView * midView;
@property (nonatomic,weak) JTGHomeTopView * topView;

@property (nonatomic,weak) UIImageView * btn1;
@property (nonatomic,weak) UIImageView * btn2;

@end

@implementation JTGHomeTopViews

- (void)ListMidWith:(JTGListMidiCeollectionView *)ListMid
{
    if ([_delegate respondsToSelector:@selector(homeAd:)]) {
        [_delegate homeAd:self];
    }
}
- (void)ListMidWith:(JTGListMidiCeollectionView *)ListMid idstr:(NSString *)idstr title:(NSString *)title images:(NSString *)images

{
    
    if ([_delegate respondsToSelector:@selector(homeAd:ListId:title:images:)]) {
        [_delegate homeAd:self ListId:idstr title:title images:images];
    }
    
}
//- (UIImageView *)btn1
//{
//    if (!_btn1) {
//        UIImageView *img = [[UIImageView alloc]init];
//        _btn1 = img;
//        img.userInteractionEnabled = YES;
//        
//        [self addSubview:img];
//    }
//    return _btn1;
//}

//- (UIImageView *)btn2
//{
//    if (!_btn2) {
//        UIImageView *img = [[UIImageView alloc]init];
//        _btn2 = img;
//        img.userInteractionEnabled = YES;
//        [self addSubview:img];
//    }
//    return _btn2;
//}

//- (void)BtnButtonClick:(UIButton *)imageView
//{
//    JTGListCateAdModel *img1 = (JTGListCateAdModel *)self.AdArray[imageView.tag];
//  
//    
//    if ([_delegate respondsToSelector:@selector(homeAd:LinkId:)]) {
//        [_delegate homeAd:self LinkId:img1
//         .lnkId];
//    }
//    
//}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setUpAllSubviews];
    }
    return self;
}

- (void)setUpAllSubviews
{
//    顶部滚涂
    JTGHomeTopView *topView = [[JTGHomeTopView alloc]init];
    _topView = topView;
    [self addSubview:topView];
//    中间
    JTGListMidiCeollectionView *midView = [[JTGListMidiCeollectionView alloc]init];
    _midView = midView;
    midView.delegatel = self;
    midView.backgroundColor = [UIColor clearColor];
    [self addSubview:midView];
}

//-(void)setAdArray:(NSArray *)AdArray
//{
//    _AdArray = AdArray;
////
//    JTGListCateAdModel *img1 = (JTGListCateAdModel *)AdArray[0];
//    JTGListCateAdModel *img2 = (JTGListCateAdModel *)AdArray[1];
//    [self.btn1 sd_setImageWithURL:[NSURL URLWithString:img1.img]];
//    [self.btn2 sd_setImageWithURL:[NSURL URLWithString:img2.img]];
//   
//}

- (void)setScrowArray:(NSArray *)scrowArray
{
    _scrowArray = scrowArray;
    self.topView.array = scrowArray;
}

- (void)setDateArray:(NSArray *)dateArray
{
    _dateArray = dateArray;
    self.midView.dataArray = dateArray;
}
- (void)layoutSubviews
{
    [super layoutSubviews];
//    顶部
    self.topView.point = CGPointMake(0, 0);
    self.midView.point = CGPointMake(0, 100);
//    self.midView.size = CGSizeMake(100, 100);
//    CGFloat y = CGRectGetMaxY(self.midView.frame);
//    CGFloat w = screenW/2;
//    CGFloat h = 50;
//    self.btn1.frame = CGRectMake(0, y, w, h);
//    self.btn2.frame = CGRectMake(CGRectGetMaxX(self.btn1.frame), y, w, h);
//    
//    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
//    btn.tag = 0;
//    btn.frame = self.btn1.bounds;
//    [self.btn1 addSubview:btn];
//    [btn addTarget:self action:@selector(BtnButtonClick:) forControlEvents:UIControlEventTouchDown];
//    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
//    btn1.tag = 1;
//    btn1.frame = self.btn2.bounds;
//    [self.btn2 addSubview:btn1];
//    [btn1 addTarget:self action:@selector(BtnButtonClick:) forControlEvents:UIControlEventTouchDown];
}
@end
