//
//  JTGListCollectModel.m
//  JTG
//
//  Created by LTOVE on 15/11/20.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGListCollectModel.h"
#import "JTGBasicUrl.h"
@implementation JTGListCollectModel

- (void)setImg:(NSString *)img
{
    _img = [[JTGBasicUrl url].URLString stringByAppendingString:img];
}

@end
