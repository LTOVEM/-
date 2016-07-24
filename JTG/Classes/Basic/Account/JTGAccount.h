//
//  JTGAccount.h
//  JTG
//
//  Created by LTOVE on 15/11/18.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface JTGAccount : NSObject

//@property (nonatomic,copy) NSString *basicUrl;
@property (nonatomic,copy) NSString *uid;
//@property (nonatomic,copy) NSString *un;
//@property (nonatomic,copy) NSString *type;
@property (nonatomic,copy) NSString *acode;

+ (instancetype)param;

@end
