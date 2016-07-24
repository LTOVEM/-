//
//  JTGOrderProDataModel.m
//  JTG
//
//  Created by LTOVE on 15/11/20.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGOrderProDataModel.h"
#import "JTGOrderProItemModel.h"
#import "MJExtension.h"
@implementation JTGOrderProDataModel

+ (NSDictionary *)objectClassInArray
{
    return @{@"items":[JTGOrderProItemModel class]};
}

@end
