//
//  JTGListCateAdModel.h
//  JTG
//
//  Created by LTOVE on 15/11/26.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JTGListCateAdModel : NSObject
/**
 *  二级分类的父分类id【注】lnkType=3会用到
 */
@property (nonatomic,copy) NSString *lnkCateId;
/**
 *  广告图片的链接地址
 */
@property (nonatomic,copy) NSString *lnk;
/**
 *  二级分类id【注】lnkType=1时无关联;lnkType=2表示商品id;lnkType=3表示二级分类id
 */
@property (nonatomic,copy) NSString *lnkId;
/**
 *  图片地址
 */
@property (nonatomic,copy) NSString *img;
/**
 *  链接类型:=1链接网页app内打开,打开lnk；=2链接单个商品详情,打开lnkId;=3链接二级分类列表,打开lnkId
 */
@property (nonatomic,copy) NSString *lnkType;
/**
 *  标题
 */
@property (nonatomic,copy) NSString *ti;
@end
