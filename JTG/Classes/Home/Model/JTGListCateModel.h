//
//  JTGListCateModel.h
//  JTG
//
//  Created by LTOVE on 15/11/20.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//  分类列表  返回模型

#import <Foundation/Foundation.h>


@interface JTGListCateModel : NSObject
/**
 *  标题
 */
@property (nonatomic,copy) NSString *ti;
/**
 *  图片地址
 */
@property (nonatomic,copy) NSString *img;
/**
 *  类型ID
 */
@property (nonatomic,copy) NSString *id;
/**
 *  图片点击之后小图片，二级页面下来列表显示需要
 */
@property (nonatomic,copy) NSString *imgs;
/**
 *  类型数量
 */
@property (nonatomic,copy) NSString *tnum;
/**
 *  首页商品的数量
 */
@property (nonatomic,copy) NSString *count;

@end
