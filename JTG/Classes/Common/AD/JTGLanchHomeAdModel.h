//
//  JTGLanchHomeAdModel.h
//  JTG
//
//  Created by LTOVE on 15/11/20.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 "sellerId": 22754,
 "adImgUrl": "http://juhuituan.boguyuan.com/juhuituan/file_upload/myt/201511/20151102/20151102223110841.png",
 "adType": "3",
 "openFlag": "1"
 */

@interface JTGLanchHomeAdModel : NSObject
/**
 *  [adType关联][adType=3时返回][新增]
 */
@property (nonatomic,copy) NSString *sellerId;
/**
 *  广告图上绝对地址 [宽/高=1.5][480x320]
 */
@property (nonatomic,copy) NSString *adImgUrl;
/**
 *  广告链接类型 [0=无链接，1=网页地址，2=产品详情,3=商家详情]
 */
@property (nonatomic,copy) NSString *adType;
/**
 *  广告开关 [0=关闭,1=打开]
 */
@property (nonatomic,copy) NSString *openFlag;

@end
