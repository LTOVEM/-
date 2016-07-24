//
//  JTGGoodsFrame.h
//  JTG
//
//  Created by LTOVE on 15/11/22.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <Foundation/Foundation.h>
@class JTGGoodsList;

@interface JTGGoodsFrame : NSObject
/**
 *  GoodsList模型
 */
@property (nonatomic,strong) JTGGoodsList *GoodsList;
/**
 *  商品图片
 */
@property (nonatomic,assign) CGRect imageViewF;
/**
 *  商品标题
 */
@property (nonatomic,assign) CGRect titleF;
/**
 *  商品描述
 */
@property (nonatomic,assign) CGRect detialF;
/**
 *  价格
 */
@property (nonatomic,assign) CGRect priceF;
/**
 *  购买人数
 */
@property (nonatomic,assign) CGRect countF;
@end
