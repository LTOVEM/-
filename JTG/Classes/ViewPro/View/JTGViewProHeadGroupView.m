//
//  JTGViewProHeadGroupView.m
//  JTG
//
//  Created by LTOVE on 15/11/24.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGViewProHeadGroupView.h"

#import "JTGViewProGroupModel.h"
@interface JTGViewProHeadGroupView ()


@property (nonatomic,strong) UILabel * title;

@end

@implementation JTGViewProHeadGroupView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.size = CGSizeMake(screenW, 30);
        
        [self setUpAllSubviews];
//        [self sizeToFit];
    }
    return self;
}

- (void)setUpAllSubviews
{
    UILabel *title = [[UILabel alloc]init];
    _title = title;
    title.point = CGPointMake(10, 0);
    title.contentMode = UIViewContentModeCenter;
//    title.size = CGSizeMake(100, 50);
    [self addSubview:title];
}

- (void)setGroupModel:(JTGViewProGroupModel *)groupModel
{
    _groupModel = groupModel;
    self.title.text = groupModel.title;
    [self.title sizeToFit];
    self.title.centerY = self.centerY;
//    NSLog(@"%f",self.title.height);
    [self sizeToFit];
    
}

@end
