//
//  JTGListOrdParam.h
//  JTG
//
//  Created by LTOVE on 15/11/20.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGAccount.h"

@interface JTGListOrdParam : JTGAccount
/**
 *  类型：1 全部账单 2 待付款 3 待使用 4 待评价
 */
@property (nonatomic,copy) NSString *type;
/**
 *  页码（默认是第一页，第二页开始传参数
 */
@property (nonatomic,copy) NSString *pgnm;
@end
