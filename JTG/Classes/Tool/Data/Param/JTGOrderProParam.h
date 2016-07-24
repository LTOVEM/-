//
//  JTGOrderProParam.h
//  JTG
//
//  Created by LTOVE on 15/11/20.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGAccount.h"

@interface JTGOrderProParam : JTGAccount

/**
 *  分类id
 */
@property (nonatomic,copy) NSString *id;
/**
 *  首页的子类型ID
 */
@property (nonatomic,copy) NSString *inid;
/**
 *  排序类型：0 默认排序 ，2 销量最高 ,3 价格最低 ，4 价格最高
 */
@property (nonatomic,copy) NSString *ord;

@end
