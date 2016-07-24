//
//  JTGParentItemModel.h
//  JTG
//
//  Created by LTOVE on 15/11/20.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JTGParentItemModel : NSObject
/**
 *  JTGTypeIyemModel 模型
 */
@property (nonatomic,strong) NSArray *typeItem;
/**
 *  图片地址
 */
@property (nonatomic,copy) NSString *img;
/**
 *  类别标题
 */
@property (nonatomic,copy) NSString *ti;

@property (nonatomic,copy) NSString *id;
@end
