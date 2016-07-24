//
//  JTGImageView.m
//  JTG
//
//  Created by LTOVE on 15/11/22.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGImageView.h"
#import "JTGGoodsList.h"
#import "UIImageView+WebCache.h"

@interface JTGImageView ()

@property (nonatomic,weak) UIImageView * yuYueView;
@property (nonatomic,assign) int x;
@end
@implementation JTGImageView

- (UIImageView *)yuYueView
{
    if (!_yuYueView) {
        UIImageView *yuYueV = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"product_free"]];
        _yuYueView = yuYueV;
//        yuYueV.hidden = YES;
        [yuYueV sizeToFit];
        [self addSubview:yuYueV];
    }
    return _yuYueView;
}

- (void)setGoodsList:(JTGGoodsList *)GoodsList
{
    _GoodsList = GoodsList;
    
    NSURL *imgUrl = [NSURL URLWithString:GoodsList.img];
    [self sd_setImageWithURL:imgUrl placeholderImage:[UIImage imageNamed:@"replace"]];
    if ([GoodsList.sta isEqualToString:@"0"]) {
        self.yuYueView.hidden = YES;
//        NSLog(@"%@--%@",GoodsList.sta,GoodsList.ti);
    }else{
    self.yuYueView.hidden = NO;
    }
   
    
}

- (void)layoutSubviews
{
    [super layoutSubviews];

    CGFloat h = self.height * 0.7;
    CGFloat w = h;
    
    self.yuYueView.frame = CGRectMake(0, 0, w, h);
    
}

@end
