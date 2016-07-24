//
//  JTGBasicUrl.m
//  JTG
//
//  Created by LTOVE on 15/11/19.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGBasicUrl.h"

@implementation JTGBasicUrl

+ (instancetype)url
{
    JTGBasicUrl *url = [[self alloc]init];
    url.URLString = @"http://127.0.0.1";
    return url;
}

+ (instancetype)basicUrl
{
    JTGBasicUrl *url = [[self alloc]init];
    url.URLString = @"http://127.0.0.1";
    return url;
}
@end
