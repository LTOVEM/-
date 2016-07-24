//
//  JTGPopMenu.h
//  JTG
//
//  Created by LTOVE on 15/11/28.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JTGPopMenu : UIImageView

/**
 *  弹出菜单
 */
+ (instancetype)showInRect:(CGRect)rect;
/**
 *  隐藏菜单
 */
+ (void)hiden;

/**
 *  内容视图
 */
@property (nonatomic,weak) UIView * contentView;

@end
