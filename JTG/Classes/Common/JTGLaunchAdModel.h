//
//  JTGLaunchAdModel.h
//  JTG
//
//  Created by LTOVE on 15/11/20.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 "adType": "2",
 "adUrl": "http://juhuituan.boguyuan.com/juhuituan/app/adhtml/ad315.html",
 "openFlag": "1",
 "productId": 4122
 */


@interface JTGLaunchAdModel : NSObject
/**
 *  广告链接类型 [0=无链接，1=网页地址，2=产品详情,3=商家详情]
 */
@property (nonatomic,copy) NSString *adType;
/**
 *  广告实体(网页中包含图片)
 */
@property (nonatomic,copy) NSString *adUrl;
/**
 *  广告开关 [0=关闭,1=打开]
 */
@property (nonatomic,copy) NSString *openFlag;
/**
 *  ][adType关联][adType=2时返回]
 */
@property (nonatomic,copy) NSString *productId;
@end
