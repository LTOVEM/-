//
//  JTGProfileTwoCell.h
//  JTG
//
//  Created by LTOVE on 15/11/21.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGNomalItem.h"

@interface JTGProfileTwoCell : JTGNomalItem
/**
 *  订单数量  代付款 待使用  待评价
 */
@property (nonatomic,strong) NSArray *listCount;

+ (instancetype)itemsWithArray:(NSArray *)array;
@end
