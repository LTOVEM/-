//
//  JTGListGateData.m
//  JTG
//
//  Created by LTOVE on 15/11/20.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGListGateData.h"

#import "MJExtension.h"
#import "JTGListCateModel.h"
#import "JTGListCateAdModel.h"

@implementation JTGListGateData


+ (NSDictionary *)objectClassInArray
{
    return @{@"items":[JTGListCateModel class],@"adItems":[JTGListCateAdModel class]};
}
@end
