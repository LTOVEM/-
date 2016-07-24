//
//  JTGSearchParam.h
//  JTG
//
//  Created by LTOVE on 15/11/20.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGAccount.h"

@interface JTGSearchParam : JTGAccount


/**
 *  搜索内容
 */
@property (nonatomic,copy) NSString *con;
/**
 *  页码（默认是第一页，第二页开始传参数
 */
@property (nonatomic,copy) NSString *pgnm;
@property (nonatomic,copy) NSString *action;

@end
