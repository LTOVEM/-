//
//  JTGHomeCellDataParam.h
//  JTG
//
//  Created by LTOVE on 15/11/19.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGAccount.h"

@interface JTGHomeCellDataParam : JTGAccount
/**
 *  类型：1 首页全部商品2 父类型商品3 子类商品列表4 热卖商品
 */
@property (nonatomic,copy) NSString *type;
/**
 *  type =2 :首页下面的类型下的商品，id是子类下的商品分类
 */
@property (nonatomic,copy) NSString *id;
/**
 *  页码（默认是第一页，第二页开始传参数）
 */
@property (nonatomic,copy) NSString *pgnm;

@end
