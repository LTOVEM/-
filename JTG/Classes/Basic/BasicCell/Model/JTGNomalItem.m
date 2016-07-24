//
//  JTGNomalItem.m
//  JTG
//
//  Created by LTOVE on 15/11/18.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGNomalItem.h"

@implementation JTGNomalItem

//+ (instancetype)itemWithTitle:(NSString *)title subtitle:(NSString *)subtitle price:(NSString *)price buyCount:(NSString *)buyCount image:(UIImage *)image
//{
//    JTGNomalItem *item = [[self alloc]init];
//    item.title = title;
//    item.subtitle = subtitle;
//    item.price = price;
//    item.buyCount = buyCount;
//    item.image = image;
//    return item;
//}

+ (instancetype)itemWithTitle:(NSString *)title image:(UIImage *)image
{
    JTGNomalItem *item = [[self alloc]init];
    item.image = image;
    item.title = title;
    return item;
}

@end
