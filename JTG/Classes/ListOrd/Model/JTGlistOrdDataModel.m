//
//  JTGlistOrdDataModel.m
//  JTG
//
//  Created by LTOVE on 15/11/20.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGlistOrdDataModel.h"
#import "JTGListOrdModel.h"
#import "MJExtension.h"

@implementation JTGlistOrdDataModel

+ (NSDictionary *)objectClassInArray
{
    return @{@"items":[JTGListOrdModel class]};
}

@end
