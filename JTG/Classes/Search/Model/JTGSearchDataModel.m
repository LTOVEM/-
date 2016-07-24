//
//  JTGSearchDataModel.m
//  JTG
//
//  Created by LTOVE on 15/11/20.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGSearchDataModel.h"

#import "JTGSearchModel.h"
#import "MJExtension.h"

@implementation JTGSearchDataModel

+ (NSDictionary *)objectClassInArray
{
    return @{@"items":[JTGSearchModel class]};
}


@end
