//
//  JTGListCollectModel.h
//  JTG
//
//  Created by LTOVE on 15/11/20.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JTGListCollectModel : NSObject
/**
 *  商品ID
 */
@property (nonatomic,copy) NSString *inid;
/**
 *  商品图片地址
 */
@property (nonatomic,copy) NSString *img;
/**
 *  商品团购
 */
@property (nonatomic,copy) NSString *fpri;
/**
 *  登录名
 */
@property (nonatomic,copy) NSString *un;
/**
 *  商品标题
 */
@property (nonatomic,copy) NSString *ti;
/**
 *  用户名
 */
@property (nonatomic,copy) NSString *unm;
/**
 *  收藏时间
 */
@property (nonatomic,copy) NSString *dt;
/**
 *  商品内容
 */
@property (nonatomic,copy) NSString *con;
/**
 *  收藏ID
 */
@property (nonatomic,copy) NSString *id;
/**
 *  已购买人数
 */
@property (nonatomic,copy) NSString *num;
/**
 *  商品原价
 */
@property (nonatomic,copy) NSString *pri;
@end
