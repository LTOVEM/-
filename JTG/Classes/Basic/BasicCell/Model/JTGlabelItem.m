//
//  JTGlabelItem.m
//  JTG
//
//  Created by LTOVE on 15/11/21.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGlabelItem.h"

@implementation JTGlabelItem


+ (instancetype)itemWithImage:(UIImage *)image LblText:(NSString *)text title:(NSString *)title
{
    JTGlabelItem *item = [[self alloc]init];
    item.image = image;
    item.text = text;
    item.title = title;
    return item;
}
@end
