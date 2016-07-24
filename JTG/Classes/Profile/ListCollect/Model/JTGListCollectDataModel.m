//
//  JTGListCollectDataModel.m
//  JTG
//
//  Created by LTOVE on 15/11/20.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGListCollectDataModel.h"
#import "JTGListCollectModel.h"
#import "MJExtension.h"

@implementation JTGListCollectDataModel


+ (NSDictionary *)objectClassInArray
{
    return @{@"items":[JTGListCollectModel class]};
}
@end
