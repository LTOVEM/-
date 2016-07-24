//
//  JTGViewProPic.m
//  JTG
//
//  Created by LTOVE on 15/11/23.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGViewProPic.h"
#import "JTGViewProDataModel.h"
#import "UIImageView+WebCache.h"
@implementation JTGViewProPic

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.size = CGSizeMake(screenW, screenW * 0.6);
//        设置所有子控件
//        [self setUpAllSubViews];
//        self.backgroundColor = [UIColor redColor];
    }
    return self;
}



- (void)setDataModel:(JTGViewProDataModel *)dataModel
{
    _dataModel = dataModel;
    NSURL *url = [NSURL URLWithString:dataModel.img];
    [self sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"replace"]];
    
}

@end
