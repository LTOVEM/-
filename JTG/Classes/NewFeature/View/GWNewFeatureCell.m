//
//  GWNewFeatureCell.m
//  sina
//
//  Created by LTOVE on 15/11/7.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "GWNewFeatureCell.h"

#import "JTGTabBarController.h"
#import "JTGRootTool.h"

@interface GWNewFeatureCell ()

@property (nonatomic,weak) UIImageView * imageView;
@property (nonatomic,weak) UIButton * shareButton;
@property (nonatomic,weak) UIButton * startButton;


@end

@implementation GWNewFeatureCell

- (UIButton *)shareButton
{
    if (!_shareButton) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setImage:[UIImage imageNamed:@"new_feature_share_false"] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"new_feature_share_true"] forState:UIControlStateSelected];
        [btn setTitle:@"分享给大家" forState:UIControlStateNormal];
        [btn sizeToFit];
        [btn addTarget:self action:@selector(shareBtnClick:) forControlEvents:UIControlEventTouchUpInside];
        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self addSubview:btn];
        _shareButton = btn;
        
    }
    return _shareButton;
}
#warning 完成分享页面
- (void)shareBtnClick:(UIButton *)btn
{
    btn.selected = !btn.selected;
}

- (UIButton *)startButton
{
    if (!_startButton) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setBackgroundImage:[UIImage imageNamed:@"new_feature_finish_button"] forState:UIControlStateNormal];
        [btn setBackgroundImage:[UIImage imageNamed:@"new_feature_finish_button_highlighted"] forState:UIControlStateHighlighted];
        [btn setTitle:@"开始购物" forState:UIControlStateNormal];
        [btn sizeToFit];
        [self addSubview:btn];
        [btn addTarget:self action:@selector(startBtnClick) forControlEvents:UIControlEventTouchUpInside];
        _startButton = btn;
    }
    return _startButton;
}

//开始微博
- (void)startBtnClick
{
    [JTGRootTool chooseRootViewController:[UIApplication sharedApplication].keyWindow];
}

- (UIImageView *)imageView
{
    if (!_imageView) {
        UIImageView *imageView = [[UIImageView alloc]init];
        _imageView = imageView;
        [self.contentView addSubview:imageView];
    }
    return _imageView;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
//    新特性
    self.imageView.frame = self.bounds;
//    分享按钮
    self.shareButton.center = CGPointMake(self.width * 0.5, self.height * 0.8);
//    开始按钮
    self.startButton.center = CGPointMake(self.width * 0.5, self.height * 0.9);
}

- (void)setImage:(UIImage *)image
{
    _image = image;
    self.imageView.image = image;
}

- (void)setIndexPath:(NSIndexPath *)indexPath count:(int)count
{
    if (indexPath.row == count - 1) {
        self.shareButton.hidden = NO;
        self.startButton.hidden = NO;
    }else{
        self.shareButton.hidden = YES;
        self.startButton.hidden = YES;
    }
}

@end
