//
//  JTGViewOrdModel.h
//  JTG
//
//  Created by LTOVE on 15/11/20.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JTGViewOrdModel : NSObject
/**
 *  1 已收藏 0 未收藏
 */
@property (nonatomic,copy) NSString *scsta;
/**
 *  商品团购
 */
@property (nonatomic,copy) NSString *fpri;
/**
 *  商家信息
 */
@property (nonatomic,copy) NSString *jcon;
/**
 *  总金额
 */
@property (nonatomic,copy) NSString *zpri;
/**
 *  购买数量
 */
@property (nonatomic,copy) NSString *num;
/**
 *  商品原价
 */
@property (nonatomic,copy) NSString *pri;
/**
 *  套餐内容
 */
@property (nonatomic,copy) NSString *scon;
/**
 *  商品标题
 */
@property (nonatomic,copy) NSString *ti;
/**
 *  消息提示
 */
@property (nonatomic,copy) NSString *xcon;
/**
 *  图片地址
 */
@property (nonatomic,copy) NSString *img;
/**
 *  提交订单时间
 */
@property (nonatomic,copy) NSString *jt;
/**
 *  订单号
 */
@property (nonatomic,copy) NSString *numb;
/**
 *  商品详情
 */
@property (nonatomic,copy) NSString *weburl;
/**
 *  团购人数
 */
@property (nonatomic,copy) NSString *count;
/**
 *  1 已消费 0 未消费
 */
@property (nonatomic,copy) NSString *sta;
/**
 *  团购结束时间
 */
@property (nonatomic,copy) NSString *dt;
/**
 *  商品内容
 */
@property (nonatomic,copy) NSString *con;
@end
