//
//  JTGGoodsList.m
//  JTG
//
//  Created by LTOVE on 15/11/20.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGGoodsList.h"

#import "JTGBasicUrl.h"

@implementation JTGGoodsList

- (void)setImg:(NSString *)img
{
    NSString *url = [[JTGBasicUrl url].URLString stringByAppendingString:img];
    NSLog(@"%@",url);
    
    _img = url;
}

@end
