//
//  JTGListOrdModel.h
//  JTG
//
//  Created by LTOVE on 15/11/20.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JTGListOrdModel : NSObject
/**
 *  商品标题
 */
@property (nonatomic,copy) NSString *ti;
/**
 *  0 待使用  1 已使用
 */
@property (nonatomic,copy) NSString *stat;
/**
 *  商品团购
 */
@property (nonatomic,copy) NSString *fpri;
/**
 *  商品ID
 */
@property (nonatomic,copy) NSString *inid;
/**
 *  商品图片地址
 */
@property (nonatomic,copy) NSString *img;
/**
 *  评价分数
 */
@property (nonatomic,copy) NSString *score;

/**
 *  0 非免预约 1 免预约
 */
@property (nonatomic,copy) NSString *sta;
/**
 *  商品原价
 */
@property (nonatomic,copy) NSString *pri;
/**
 *  购买数量
 */
@property (nonatomic,copy) NSString *num;
/**
 *  商品内容
 */
@property (nonatomic,copy) NSString *con;
/**
 *  团购截止时间
 */
@property (nonatomic,copy) NSString *dt;
/**
 *  订单ID
 */
@property (nonatomic,copy) NSString *id;

@end
