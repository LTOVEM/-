//
//  JTGHttpTool.h
//  JTG
//
//  Created by LTOVE on 15/11/18.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JTGHttpTool : NSObject



+ (void)GET:(NSString *)URLstring paramenters:(id)paraments success:(void(^)(id responseObject))success failure:(void(^)(NSError *error))failure;



@end
