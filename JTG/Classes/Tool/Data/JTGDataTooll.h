//
//  JTGDataTooll.h
//  JTG
//
//  Created by LTOVE on 15/11/19.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//  数据加载工具

#import <Foundation/Foundation.h>

/*
 type	*类型：1 全部账单 2 待付款 3 待使用 4 待评价
 pgnm
 */
@interface JTGDataTooll : NSObject


/**
 *  请求个人设置用户名
 *
 *  @param success 请求成功的回调
 *  @param failure 请求失败的回调
 */
+ (void)loadProfileWithSuccess:(void(^)(NSArray *data))successs faiilure:(void(^)(NSError *error))failure;



/**
 *  请求商品详情
 *
 *  @param idStr   商品ID
 *  @param success 请求成功的回调
 *  @param failure 请求失败的回调
 */
+ (void)loadViewProWithId:(NSString *)idStr success:(void(^)(NSArray *data))success failure:(void(^)(NSError *error))failure;



/**
 *  请求分类列表
 *
 *  @param type    类型：1 父类型（首页类型） 2子类型 3 父类型下面的子类型，父类就是首页类型 4 商品列表（首页类型）
 *  @param idStr   分类的ID(type为3，需要加上参数id（父类）
 *  @param success 请求成功的回调
 *  @param failure 请求失败的回调
 */
+ (void)loadListGateWithType:(NSString *)type id:(NSString *)idStr success:(void(^)(NSArray *items,NSArray *Aditems))success failure:(void(^)(NSError *error))failure;
/**
 *  请求首页轮播图片数据
 *
 *  @param success 请求成功的回调
 *  @param failure 请求失败的回调
 */
+ (void)LoadRunLoopPicsWithsuccess:(void(^)(NSArray *items))success failure:(void(^)(NSError *error))failure;


/**
 *  请求首页商品列表
 *
 *  @param type    类型：1 首页全部商品2 父类型商品3 子类商品列表4 热卖商品
 *  @param id      type =2 :首页下面的类型下的商品，id是子类下的商品分类
 *  @param pgnm    页码（默认是第一页，第二页开始传参数）
 *  @param success 请求成功的回调
 *  @param failure 请求失败的回调
 */
+ (void)loadHomeDataWithType:(NSString *)type id:(NSString *)idStr pgnm:(NSString *)pgnm success:(void(^)(NSArray *items,NSString *pgnum))success failure:(void(^)(NSError *error))failure;

//+ (void)zcWithUid:(NSString *)uid uName:(NSString *)uname Phone:(NSString *)phone tid:(NSString *)tid pwd:(NSString)pwd

+ (void)loadListDataWithType:(NSString *)type id:(NSString *)idStr pgnm:(NSString *)pgnm success:(void(^)(NSArray *items,NSString *pgnum))success failure:(void(^)(NSError *error))failure;

@end
