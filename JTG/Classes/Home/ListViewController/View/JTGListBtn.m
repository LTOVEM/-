//
//  JTGListBtn.m
//  JTG
//
//  Created by LTOVE on 15/11/27.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGListBtn.h"
#import "UIImageView+WebCache.h"

@interface JTGListBtn ()
@property (nonatomic,weak) UIImageView * imageViews;
@end

@implementation JTGListBtn


- (UIImageView *)imageViews
{
    if (!_imageViews) {
        UIImageView *imageviews = [[UIImageView alloc]init];
        _imageViews = imageviews;
        [self addSubview:imageviews];
    }
    return _imageViews;
}
- (instancetype)init
{
    if (self = [super init]) {
        UIImageView *imageviews = [[UIImageView alloc]init];
        _imageViews = imageviews;
        _imageViews.backgroundColor = [UIColor redColor];
        [self addSubview:imageviews];

    }
    return self;
}

//- (instancetype)initWithFrame:(CGRect)frame
//{
//    if (self = [super initWithFrame:frame]) {
//        UIImageView *imageviews = [[UIImageView alloc]init];
//        _imageViews = imageviews;
//        [self addSubview:imageviews];
//    }
//    return self;
//}

- (void)setPic:(NSString *)pic

{
    [self.imageViews sd_setImageWithURL:[NSURL URLWithString:pic]];
    if (pic == nil) {
        self.imageViews = self.imageView;
    }
}

- (void)layoutSubviews
{
//    图片
    self.imageViews.size = CGSizeMake(self.titleLabel.height, self.titleLabel.height);
//    self.titleLabel.width = 80;
//    self.titleLabel.height = 20;
    [self.titleLabel sizeToFit];
    self.imageViews.x = (self.width - self.titleLabel.width - self.imageViews.width - 10)/2;
    self.titleLabel.x = CGRectGetMaxX(self.imageViews.frame) + 10;
    self.imageViews.centerY = self.centerY;
    self.titleLabel.centerY = self.centerY;
}

@end
