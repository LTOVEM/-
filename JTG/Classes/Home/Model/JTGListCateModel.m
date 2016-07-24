//
//  JTGListCateModel.m
//  JTG
//
//  Created by LTOVE on 15/11/20.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGListCateModel.h"
#import "JTGBasicUrl.h"
@implementation JTGListCateModel


- (void)setImg:(NSString *)img
{
    _img =  [[JTGBasicUrl url].URLString stringByAppendingString:img];
    NSLog(@"%@",img);
}

//- (void)setImgs:(NSString *)imgs
//{
////    NSLog(@"----%@",imgs);
//    _imgs = [[JTGBasicUrl url].URLString stringByAppendingString:imgs];
////    NSLog(@"----%@",_imgs);
//}

@end
