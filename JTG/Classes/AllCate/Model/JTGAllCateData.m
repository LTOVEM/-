//
//  JTGAllCateData.m
//  JTG
//
//  Created by LTOVE on 15/11/20.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGAllCateData.h"
#import "JTGParentItemModel.h"
#import "MJExtension.h"
@implementation JTGAllCateData

+ (NSDictionary *)objectClassInArray
{
    return @{@"parentItem":[JTGParentItemModel class]};
}

@end
