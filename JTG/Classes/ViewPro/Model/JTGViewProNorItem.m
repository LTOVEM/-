//
//  JTGViewProNorItem.m
//  JTG
//
//  Created by LTOVE on 15/11/23.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGViewProNorItem.h"

@implementation JTGViewProNorItem
+ (instancetype)itemWithTitle:(NSString *)title image:(UIImage *)image
{
    JTGViewProNorItem *item = [[self alloc] init];
    item.image = image;
    item.title = title;
    return item;
}
+ (instancetype)itemWithTitle:(NSString *)title
{
    JTGViewProNorItem *item = [self itemWithTitle:title image:nil];
    return item;
}
@end
