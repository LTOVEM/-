//
//  JTGDatecelll.m
//  JTG
//
//  Created by LTOVE on 15/11/24.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGDatecelll.h"
#import "JTGViewProDataModel.h"
@interface JTGDatecelll ()
@property (nonatomic,strong) UIButton * titleButton;

@property (nonatomic,strong) UIButton * dateButton;
@end

@implementation JTGDatecelll

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.size = CGSizeMake(screenW, 30);
        
        [self setUpAllSubviews];
    }
    return self;
}


- (void)setUpAllSubviews
{
    UIButton *titleButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _titleButton = titleButton;
    [titleButton setImage:[UIImage imageNamed:@"people_num"] forState:UIControlStateNormal];
    [self addSubview:titleButton];
    
    UIButton *dateButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _dateButton = dateButton;
    [dateButton setImage:[UIImage imageNamed:@"time_clock"] forState:UIControlStateNormal];
    [self addSubview:dateButton];
}

- (void)setDataModel:(JTGViewProDataModel *)dataModel
{
    _dataModel = dataModel;
    NSString *pensonNum = [NSString stringWithFormat:@"%@人",dataModel.num];
    NSString *dateStr = [NSString stringWithFormat:@"截至日期 %@",dataModel.dt];
    [self.titleButton setTitle:pensonNum forState:UIControlStateNormal];
    [self.dateButton setTitle:dateStr forState:UIControlStateNormal];
    self.titleButton.titleLabel.font = JTGViewProTextViewFont;
    self.dateButton.titleLabel.font = JTGViewProTextViewFont;
    self.titleButton.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.dateButton.titleLabel.textAlignment = NSTextAlignmentCenter;
    
    [self.titleButton sizeToFit];
    [self.dateButton sizeToFit];
    [self.titleButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.dateButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self setUpFrame];
}



- (void)setUpFrame
{
    self.titleButton.x = 10;
    self.titleButton.centerY = self.centerY;
    self.dateButton.x = screenW - self.dateButton.width - 10;
    self.dateButton.centerY = self.centerY;
}


@end
