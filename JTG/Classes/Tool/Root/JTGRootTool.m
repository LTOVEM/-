//
//  JTGRootTool.m
//  聚惠团
//
//  Created by LTOVE on 15/11/18.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGRootTool.h"

#import "GWNewFeatureController.h"
#import "JTGTabBarController.h"


#define JTGVersonKey @"verson"

@implementation JTGRootTool

#warning 待完成 -->控制器选择方法
/**
 *  控制器选择
 */
+ (void)chooseRootViewController:(UIWindow *)window
{
//    获取当前版本号
    NSString *currentVerson = [NSBundle mainBundle].infoDictionary[@"CFBundleVersion"];
    
//    获取上一次的版本号
    NSString *lastVerson = [[NSUserDefaults standardUserDefaults]objectForKey:JTGVersonKey];
    if ([currentVerson isEqualToString:lastVerson]) {

        JTGTabBarController *tabBarVc = [[JTGTabBarController alloc]init];
        window.rootViewController = tabBarVc;
    }else{
        GWNewFeatureController *newFeatureVc = [[GWNewFeatureController alloc]init];
        
        window.rootViewController = newFeatureVc;
        [[NSUserDefaults standardUserDefaults]setObject:currentVerson forKey:JTGVersonKey];
    }
    
    
    
  
}

@end
