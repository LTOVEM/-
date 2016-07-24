//
//  JTGHomeData.m
//  JTG
//
//  Created by LTOVE on 15/11/19.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGHomeData.h"

#import "MJExtension.h"
#import "JTGHomeList.h"

@implementation JTGHomeData




+ (NSDictionary *)objectClassInArray
{
    return @{@"items":[JTGHomeList class]};
}
@end
