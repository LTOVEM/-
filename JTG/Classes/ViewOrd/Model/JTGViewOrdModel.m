//
//  JTGViewOrdModel.m
//  JTG
//
//  Created by LTOVE on 15/11/20.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGViewOrdModel.h"
#import "JTGBasicUrl.h"

@implementation JTGViewOrdModel

- (void)setImg:(NSString *)img
{
    _img = [[JTGBasicUrl url].URLString stringByAppendingString:img];
}

@end
