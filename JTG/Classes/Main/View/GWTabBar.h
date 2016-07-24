//
//  GWTabBar.h
//  sina
//
//  Created by LTOVE on 15/11/5.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GWTabBar;

@protocol GWTabBarDelegate <NSObject>

@optional
- (void)tabBar:(GWTabBar *)tabBar didClickButton:(NSUInteger)index;


@end


@interface GWTabBar : UIView

/**
 *  保存每一个按钮对应tabBarItem模型
 */
@property (nonatomic,strong) NSArray *itmes;

@property (nonatomic ,weak)id<GWTabBarDelegate>delegate;

@end
