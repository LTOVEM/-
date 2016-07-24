//
//  JTGOrderProItemModel.h
//  JTG
//
//  Created by LTOVE on 15/11/20.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//  商品排序返回结果

#import <Foundation/Foundation.h>

@interface JTGOrderProItemModel : NSObject
/**
 *  商品原价
 */
@property (nonatomic,copy) NSString *pri;
/**
 *  购买人数
 */
@property (nonatomic,copy) NSString *num;
/**
 *  id
 */
@property (nonatomic,copy) NSString *id;
/**
 *  商品内容
 */
@property (nonatomic,copy) NSString *con;
/**
 *  标题
 */
@property (nonatomic,copy) NSString *ti;
/**
 *  商品团购jia
 */
@property (nonatomic,copy) NSString *fpri;
/**
 *  图片地址(小)
 */
@property (nonatomic,copy) NSString *img;
/**
 *  0 非免预约 1 免预约
 */
@property (nonatomic,copy) NSString *sta;

@end
