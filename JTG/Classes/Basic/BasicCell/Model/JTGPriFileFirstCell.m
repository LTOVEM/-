//
//  JTGPriFileFirstCell.m
//  JTG
//
//  Created by LTOVE on 15/11/21.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGPriFileFirstCell.h"

@implementation JTGPriFileFirstCell

+ (instancetype)itemWithTitle:(NSString *)title
{
    JTGPriFileFirstCell *item = [[self alloc]init];
    item.textLbl = title;
    return item;
}

@end
