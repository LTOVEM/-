//
//  JTGViewProDataModel.m
//  JTG
//
//  Created by LTOVE on 15/11/20.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGViewProDataModel.h"
#import "JTGBasicUrl.h"
@implementation JTGViewProDataModel

- (void)setImg:(NSString *)img
{
    _img = [[JTGBasicUrl url].URLString stringByAppendingString:img];
}

@end
