//
//  JTGMyLoadButton.h
//  JTG
//
//  Created by LTOVE on 15/11/21.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JTGBadgeView.h"
@interface JTGMyLoadButton : UIButton

//创建一个按钮
+ (instancetype)loadButtonWithImage:(UIImage *)image heightImage:(UIImage *)heighImage title:(NSString *)title ;
@property (nonatomic,strong) JTGBadgeView * badgeValue;
@end
