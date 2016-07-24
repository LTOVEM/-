//
//  JTGBadgeView.m
//  JTG
//
//  Created by LTOVE on 15/11/21.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGBadgeView.h"

@implementation JTGBadgeView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setBackgroundImage:[UIImage imageNamed:@"new_dot"] forState:UIControlStateNormal];
        self.titleLabel.font = GWBadgeValueTitleFont;
        self.userInteractionEnabled = NO;
        self.size = CGSizeMake(20, 20);
    }
    return self;
}

- (void)setBadgeValue:(NSString *)badgeValue
{
    _badgeValue = badgeValue;
    if (badgeValue == nil  || [badgeValue isEqualToString:@""] || [badgeValue isEqualToString:@"0"]) {
        self.hidden = NO;
    }else{
        self.hidden = NO;
    }
    
    [self setTitle:badgeValue forState:UIControlStateNormal];
    [self size];
}

@end
