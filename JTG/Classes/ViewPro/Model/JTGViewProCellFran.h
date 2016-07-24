//
//  JTGViewProCellFran.h
//  JTG
//
//  Created by LTOVE on 15/11/24.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <Foundation/Foundation.h>
@class JTGViewProDataModel;
@interface JTGViewProCellFran : NSObject
@property (nonatomic,strong) JTGViewProDataModel *dataModel;
/**
 *  标题
 */
@property (nonatomic,assign) CGFloat tiTitleH;
/**
 *  标题
 */
@property (nonatomic,assign) CGFloat tiH;
/**
 *  商家信息
 */
@property (nonatomic,assign) CGFloat jconH;
/**
 *  套餐内容
 */
@property (nonatomic,assign) CGFloat sconH;
/**
 *  消费提示
 */
@property (nonatomic,assign) CGFloat noticH;


@property (nonatomic,assign) CGFloat heigh;

@end
