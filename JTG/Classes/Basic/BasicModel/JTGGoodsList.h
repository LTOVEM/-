//
//  JTGGoodsList.h
//  JTG
//
//  Created by LTOVE on 15/11/20.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JTGGoodsList : NSObject
/**
 *  商品标题
 */
@property (nonatomic,copy) NSString *ti;
/**
 *  团购价格
 */
@property (nonatomic,copy) NSString *fpri;
/**
 *  内容
 */
@property (nonatomic,copy) NSString *con;
@property (nonatomic,copy) NSString *id;
/**
 *  购买人数
 */
@property (nonatomic,copy) NSString *num;
/**
 *  商品原价
 */
@property (nonatomic,copy) NSString *pri;
/**
 *  --0 非免预约 1 免预约-
 */
@property (nonatomic,copy) NSString *sta;
/**
 *  图片地址
 */
@property (nonatomic,copy) NSString *img;
@end
