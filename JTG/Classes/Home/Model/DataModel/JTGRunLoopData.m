//
//  JTGRunLoopData.m
//  JTG
//
//  Created by LTOVE on 15/11/20.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGRunLoopData.h"
#import "MJExtension.h"
#import "JTGRunLoopList.h"

@implementation JTGRunLoopData

+ (NSDictionary *)objectClassInArray
{
    return @{@"items": [JTGRunLoopList class]};
}

@end
