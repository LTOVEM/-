//
//  JTGParentItemModel.m
//  JTG
//
//  Created by LTOVE on 15/11/20.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGParentItemModel.h"
#import "JTGTypeIyemModel.h"
#import "MJExtension.h"
@implementation JTGParentItemModel

+ (NSDictionary *)objectClassInArray
{
    return @{@"typeItem":[JTGTypeIyemModel class]};
}

@end
