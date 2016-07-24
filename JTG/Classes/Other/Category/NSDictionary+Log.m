//
//  NSDictionary+Log.m
//  JTG
//
//  Created by LTOVE on 15/11/20.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "NSDictionary+Log.h"

@implementation NSDictionary (Log)


/** 本地化显示 */
- (NSString *)descriptionWithLocale:(id)locale {
    NSMutableString *str = [NSMutableString string];
    
    [str appendString:@"{\n"];
    
    // 遍历字典
    [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        [str appendFormat:@"\t%@ = %@,\n", key, obj];
    }];
    
    [str appendString:@"}"];
    
    // 取出最后一个“，”
    NSRange range = [str rangeOfString:@"," options:NSBackwardsSearch];
    [str deleteCharactersInRange:range];
    
    return str;
}
@end
