//
//  JTGLanchAdParam.h
//  JTG
//
//  Created by LTOVE on 15/11/20.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGAccount.h"
/*
 adType	[测试可选]仅用于App端测试数据用，默认为0
 openFlag	[测试可选]仅用于App端测试数据用，默认为1
 */
@interface JTGLanchAdParam : JTGAccount
/**
 *  [测试可选]仅用于App端测试数据用，默认为0
 */
@property (nonatomic,copy) NSString *adType;

/**
 *  [测试可选]仅用于App端测试数据用，默认为1
 */
@property (nonatomic,copy) NSString *openFlag;
@end
