//
//  JTGBasicUrl.h
//  JTG
//
//  Created by LTOVE on 15/11/19.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JTGBasicUrl : NSObject

@property (nonatomic,copy) NSString *URLString;

+ (instancetype)url;
+ (instancetype)basicUrl;
@end
