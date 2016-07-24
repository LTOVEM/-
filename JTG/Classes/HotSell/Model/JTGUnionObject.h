//
//  JTGUnionObject.h
//  JTG
//
//  Created by LTOVE on 15/11/23.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JTGGoodsList.h"
@interface JTGUnionObject : NSObject


@property (nonatomic,strong) JTGGoodsList *goodlist;

+ (JTGUnionObject *)unionWithgoodslist:(JTGGoodsList *)list;
@end
