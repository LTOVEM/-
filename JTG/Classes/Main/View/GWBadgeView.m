//
//  GWBadgeView.m
//  sina
//
//  Created by LTOVE on 15/11/5.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "GWBadgeView.h"


#define GWBadgeValueTitleFont [UIFont systemFontOfSize:11]

@implementation GWBadgeView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        UIImage *backGroubdImage = [UIImage imageNamed:@"main_badge"];
        [self setBackgroundImage:backGroubdImage forState:UIControlStateNormal];
        self.titleLabel.font = GWBadgeValueTitleFont;
//        self = backGroubdImage.size;
        self.width = backGroubdImage.size.width;
        self.height = backGroubdImage.size.height;
        self.userInteractionEnabled = NO;
    }
    return self;
}

- (void)setBadgeValue:(NSString *)badgeValue
{
    _badgeValue = badgeValue;
    
    if (badgeValue == nil || [badgeValue isEqualToString:@"" ]|| [badgeValue isEqualToString:@"0"]) {
        self.hidden = YES;
    }else{
        self.hidden = NO;
    }
    
//    [self setUpNumbers:badgeValue];
    [self setTitle:badgeValue forState:UIControlStateNormal];
    
    CGFloat titleW = [badgeValue boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : GWBadgeValueTitleFont} context:nil].size.width;
    if (titleW > self.width) {
        [self setBackgroundImage:nil forState:UIControlStateNormal];
        [self setImage:[UIImage imageNamed:@"new_dot"] forState:UIControlStateNormal];
    }else{
        [self setBackgroundImage:[UIImage imageNamed:@"main_badge"] forState:UIControlStateNormal];
        [self setImage:nil forState:UIControlStateNormal];
    }
}


@end
