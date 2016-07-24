//
//  JTGProfileConNumListModel.h
//  JTG
//
//  Created by LTOVE on 15/11/21.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//  订单数量

#import <Foundation/Foundation.h>

@interface JTGProfileConNumListModel : NSObject
/**
 *  待评价数量
 */
@property (nonatomic,copy) NSString *dpjnum;
/**
 *  待使用数量
 */
@property (nonatomic,copy) NSString *dsynum;
/**
 *  待付款数量
 */
@property (nonatomic,copy) NSString *dfknum;
@end
