//
//  JTGListCellView.m
//  JTG
//
//  Created by LTOVE on 15/11/25.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGListCellView.h"

#import "UIImageView+WebCache.h"

#import "JTGListCateModel.h"

#define Magin 10
#define ViewAdio 0.7
#define TitleAdio 0.3
@interface JTGListCellView ()

@property (nonatomic,weak) UIImageView * imagev;
@property (nonatomic,weak) UILabel * lbl;

@end

@implementation JTGListCellView

//- (UIImageView *)imagev
//{
//    if (!_imagev) {
//        UIImageView *imageV = [[UIImageView alloc]initWithFrame:self.bounds];
//        _imagev = imageV;
//        [self addSubview:imageV];
//    }
//    return _imagev;
//}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
//        self.size = CGSizeMake((screenW - 2 * Magin)/4, (screenW - 2 * Magin)/4);
//        self.size = CGSizeMake(40, 70);
            [self setUpAllSubViews];
    }
    return self;
}

- (void)setUpAllSubViews
{
//    图片
    UIImageView *imagev = [[UIImageView alloc]initWithFrame:CGRectMake((self.width - self.width * ViewAdio)/2,10, self.width * ViewAdio, self.width * ViewAdio)];
//    imagev.backgroundColor = [UIColor greenColor];
    UILabel *lbl = [[UILabel alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(imagev.frame), self.width, self.height - imagev.height)];
    lbl.textAlignment = NSTextAlignmentCenter;
    lbl.font = JTGViewProTextViewFont;
    _imagev = imagev;
    _lbl = lbl;
    [self addSubview:imagev];
    [self addSubview:lbl];
}

- (void)setListModel:(JTGListCateModel *)listModel
{
    _listModel = listModel;
    
//    NSLog(@"%@111111111111<<<<<<<<",listModel.img);
    [self.imagev sd_setImageWithURL:[NSURL URLWithString:listModel.img]];
//    self.imagev.image = [UIImage imageNamed:@"advclose1"];
    self.lbl.text = listModel.ti;

    
}

@end
