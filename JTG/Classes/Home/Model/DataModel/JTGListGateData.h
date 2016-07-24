//
//  JTGListGateData.h
//  JTG
//
//  Created by LTOVE on 15/11/20.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JTGListGateData : NSObject


/**
 *  分类列表  JTGListCateModel
 */
@property (nonatomic,strong) NSArray *items;
/**
 *  广告
 */
@property (nonatomic,strong) NSArray *adItems;

@property (nonatomic,assign) int num;

@end
