//
//  JTGRunLoopList.h
//  JTG
//
//  Created by LTOVE on 15/11/20.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//  轮播图模型

#import <Foundation/Foundation.h>

@interface JTGRunLoopList : NSObject
/**
 *  外部连接，连接地址
 */
@property (nonatomic,copy) NSString *lnk;
/**
 *  图片地址(拼接完成)
 */
@property (nonatomic,copy) NSString *img;
/**
 *  内部连接：连接商品的ID
 */
@property (nonatomic,copy) NSString *inid;
/**
 *  1 内容链接 2 外部链接
 */
@property (nonatomic,copy) NSString *type;

@end
