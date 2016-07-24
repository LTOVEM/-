//
//  JTGPingFenView.m
//  JTG
//
//  Created by LTOVE on 15/11/24.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGPingFenView.h"
#import "JTGViewProDataModel.h"

#define imageVW 15
#define heigh 50
@interface JTGPingFenView ()
@property (nonatomic,strong) UILabel * lbltext;
@property (nonatomic,strong) UILabel * lbltitle;
@property (nonatomic,strong) NSMutableArray * imageViews;
@end
@implementation JTGPingFenView


- (NSMutableArray *)imageViews
{
    if (!_imageViews) {
        _imageViews = [NSMutableArray array];
    }
    return _imageViews;
}
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
//        self.size = CGSizeMake(screenW, heigh);
        self.width = screenW;
        [self SetUpAllSubviews];
        
    }
    return self;
}

- (void)SetUpAllSubviews
{
    UILabel *lblTitle = [[UILabel alloc]init];
    _lbltitle = lblTitle;
    [self addSubview:lblTitle];
    lblTitle.font = JTGViewProTextViewFont;
    
    UILabel *lbltext = [[UILabel alloc]init];
    _lbltext = lbltext;
    lbltext.font = JTGViewProTextViewFont;
    [self addSubview:lbltext];
    for (int i = 0; i< 5; i++) {
        UIImageView *imageV = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"gray_star"]];
        imageV.size = CGSizeMake(imageVW, imageVW);
        imageV.y = 0;
        [self.imageViews addObject:imageV];
        [self addSubview:imageV];
    }
    
    
}

- (void)setDataModel:(JTGViewProDataModel *)dataModel
{
    NSString *lblStr = [NSString stringWithFormat:@"%@分 %@人评价",dataModel.score,dataModel.pjper];
    self.lbltext.text = lblStr;
    [self.lbltext sizeToFit];
    self.lbltext.y = 0;
    self.lbltext.x = screenW - self.lbltext.width;
    CGFloat score = [dataModel.score floatValue];
    int scor = [dataModel.score intValue];
//    score = 3.7;
//    scor = 3;
    [self setImagVFWith:4];
    if (score > 0) {
        if (scor < score) {
//            有半分的
            [self AllFenWith:scor];
            [self helfFenWith:(scor)];
            [self setImagVFWith:scor];
        }else{
//            整分
            [self AllFenWith:scor];
            [self setImagVFWith:scor - 1];
        }
    }else{
        
    }
    
}

- (void)setUpFram:(int)x
{
    
//    CGFloat x = self.lbltext.x - 5 * imageVW;
}

- (void)setImagVFWith:(int)inter
{
    CGFloat x = self.lbltext.x - 5 * imageVW;
    for (int i = 0; i<= inter; i++) {
        UIImageView *imV = self.imageViews[i];
        imV.x = x;
        NSLog(@"%f",x);
        x += imageVW;
    }
}

- (void)helfFenWith:(int)Inter
{
    UIImageView *imV = self.imageViews[Inter];
    imV.image = [UIImage imageNamed:@"half_star"];
}
- (void)helfFenFWith:(int)Inter
{
    UIImageView *imV = self.imageViews[Inter];
    CGFloat x = screenW - self.lbltext.x -(5- Inter) * imageVW;
    imV.x = x;
    imV.centerY = self.centerY;
}

- (void)AllFenWith:(int)inter
{
    for (int i = 0; i< inter; i++) {
        UIImageView *imV = self.imageViews[i];
        imV.image = [UIImage imageNamed:@"orange_star"];
    }
}

- (void)setTitlelb:(NSString *)titlelb
{
    _titlelb = titlelb;
    self.lbltitle.text = titlelb;
    [self.lbltitle sizeToFit];
    self.lbltitle.x = 10;
    self.lbltitle.y = 0;
}
@end
