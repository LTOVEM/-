//
//  JTGViewProHeadView.m
//  JTG
//
//  Created by LTOVE on 15/11/23.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGViewProHeadView.h"
#import "JTGViewProPic.h"
#import "JTGViewProTooBar.h"

@interface JTGViewProHeadView ()<JTGViewProTooBarlDelegate>


@property (nonatomic,weak) JTGViewProPic * pic;
@property (nonatomic,weak) JTGViewProTooBar * tooBar;

@end

@implementation JTGViewProHeadView


- (void)JTGViewProTooBar:(JTGViewProTooBar *)JTGViewProTooBar didClickBuyButton:(NSString *)inid goodName:(NSString *)goodName pri:(NSString *)pri
{
//    cs
    if ([_delegate respondsToSelector:@selector(JTGViewProHeadView:buyBtnClick:goodName:pri:)]) {
        [_delegate JTGViewProHeadView:self buyBtnClick:inid goodName:goodName pri:pri];
    }
}


- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self seuUpAllSubviews];
        self.height = CGRectGetMaxY(self.tooBar.frame) + CGRectGetMaxY(self.pic.frame);
    }
    return self;
}

- (void)setDataModel:(JTGViewProDataModel *)dataModel
{
    _dataModel = dataModel;
    self.pic.dataModel = dataModel;
    self.tooBar.dataModel = dataModel;
}
- (void)seuUpAllSubviews
{
    JTGViewProPic *pic = [[JTGViewProPic alloc]init];
    [self addSubview:pic];
    _pic = pic;
    
    JTGViewProTooBar *tooBar = [[JTGViewProTooBar alloc]init];
    
    tooBar.delegate = self;
    
    [self addSubview:tooBar];
    _tooBar = tooBar;
}
- (void)layoutSubviews
{
    self.pic.point = CGPointMake(0, 0);
    
    self.tooBar.point = CGPointMake(0, CGRectGetMaxY(self.pic.frame));
    
}
@end
