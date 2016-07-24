//
//  JTGPrifileFirstCellView.m
//  JTG
//
//  Created by LTOVE on 15/11/21.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGPrifileFirstCellView.h"


@interface JTGPrifileFirstCellView ()
@property (nonatomic,weak) UILabel * lblText;
@property (nonatomic,weak) UIImageView * rImageV;
@end
@implementation JTGPrifileFirstCellView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        UIImage *image = [UIImage imageNamed:@"My_InfoImge_Back"];
        self.image = image;
        self.userInteractionEnabled = YES;
//        self.size = image.size;
        self.width= [UIScreen mainScreen].bounds.size.width;
        self.height = 80;
        UILabel *lblText = [[UILabel alloc]init];
        [self addSubview:lblText];
        lblText.backgroundColor = GWColor(0, 0, 0, 0.5);
        _lblText = lblText;
        lblText.width = lblText.width + 50;
        UIImage *imageR = [UIImage imageNamed:@"my_arrow_right"];
        UIImageView *rImageV = [[UIImageView alloc]initWithImage:imageR];
        _rImageV = rImageV;
        [rImageV sizeToFit];
        [self addSubview:rImageV];
    }
    return self;
}

- (void)setUserName:(NSString *)userName
{
    _userName = userName;
    self.lblText.text = userName;
    [self.lblText sizeToFit];
}

- (void)layoutSubviews
{
    self.lblText.center = self.center;
    CGFloat x = self.width - self.rImageV.width * 2;
    self.rImageV.center = self.center;
    self.rImageV.x = x;
    
}
@end
