//
//  JTGUnionObject.m
//  JTG
//
//  Created by LTOVE on 15/11/23.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGUnionObject.h"

@implementation JTGUnionObject
@synthesize goodlist;
+ (JTGUnionObject *)unionWithgoodslist:(JTGGoodsList *)list
{
    JTGUnionObject *uniobObject = [[JTGUnionObject alloc]init];
    [uniobObject setGoodlist:list];
    return uniobObject;
}

@end
