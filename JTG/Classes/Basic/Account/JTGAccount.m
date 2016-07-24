//
//  JTGAccount.m
//  JTG
//
//  Created by LTOVE on 15/11/18.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGAccount.h"
/*
 服务器	http://juhuituan.boguyuan.com/juhuituan/reqData
 测试账号	uid=22285,un=15012345678
 */
@implementation JTGAccount

//-(NSString *)basicUrl
//{
//    return @"http://juhuituan.boguyuan.com/juhuituan";
//}
+ (instancetype)param
{
    JTGAccount *account = [[self alloc]init];
    account.uid = @"1111111111";
    NSString *uid = [[NSUserDefaults standardUserDefaults]objectForKey:accoubt];
    if (uid) {
        account.uid = uid;
        NSLog(@"%@",uid);
    }
    
    
//    account.un = @"15012345678";
    account.acode = @"1";
    return account;
}

@end
