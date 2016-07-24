//
//  JTGViewProDataModel.h
//  JTG
//
//  Created by LTOVE on 15/11/20.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JTGViewProDataModel : NSObject
/**
 *  商品原价
 */
@property (nonatomic,copy) NSString *pri;
/**
 *  购买人数
 */
@property (nonatomic,copy) NSString *num;
/**
 *  商家信息
 */
@property (nonatomic,copy) NSString *jcon;
/**
 *  商品团购
 */
@property (nonatomic,copy) NSString *fpri;
/**
 *  1 已收藏 0 未收藏
 */
@property (nonatomic,copy) NSString *scsta;
/**
 *  评价人数
 */
@property (nonatomic,copy) NSString *pjper;
/**
 *  消费提示
 */
@property (nonatomic,copy) NSString *xcon;
/**
 *  商品标题
 */
@property (nonatomic,copy) NSString *ti;
/**
 *  id
 */
@property (nonatomic,copy) NSString *id;
/**
 *  套餐内容
 */
@property (nonatomic,copy) NSString *scon;
/**
 *  团购结束时间
 */
@property (nonatomic,copy) NSString *dt;
/**
 *  商品内容
 */
@property (nonatomic,copy) NSString *con;
/**
 *  评价分数
 */
@property (nonatomic,copy) NSString *score;
/**
 *  图片地址
 */
@property (nonatomic,copy) NSString *img;
/**
 *  分享地址
 */
@property (nonatomic,copy) NSString *lnk;
/**
 *  商品详情
 */
@property (nonatomic,copy) NSString *weburl;

@end
