//
//  JTGListGateParam.h
//  JTG
//
//  Created by LTOVE on 15/11/20.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGAccount.h"
/*
 type
 id
 */
@interface JTGListGateParam : JTGAccount
/**
 *  *类型：1 父类型（首页类型） 2子类型 3 父类型下面的子类型，父类就是首页类型 4 商品列表（首页类型）
 */
@property (nonatomic,copy) NSString *type;
/**
 *  分类的ID(type为3，需要加上参数id（父类）)
 */
@property (nonatomic,copy) NSString *id;
@end
