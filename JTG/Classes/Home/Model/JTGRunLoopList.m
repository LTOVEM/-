//
//  JTGRunLoopList.m
//  JTG
//
//  Created by LTOVE on 15/11/20.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGRunLoopList.h"

#import "JTGBasicUrl.h"

@implementation JTGRunLoopList


- (void)setImg:(NSString *)img
{
    NSString *url = [[JTGBasicUrl basicUrl].URLString stringByAppendingString:img];;
    
    _img = url;
}

@end
