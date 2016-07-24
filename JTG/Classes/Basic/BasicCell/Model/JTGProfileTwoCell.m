//
//  JTGProfileTwoCell.m
//  JTG
//
//  Created by LTOVE on 15/11/21.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGProfileTwoCell.h"

@implementation JTGProfileTwoCell

+ (instancetype)itemsWithArray:(NSArray *)array
{
    JTGProfileTwoCell *item = [[self alloc]init];
    item.listCount = array;
    return item;
}

@end
