//
//  JTGHomeDataCellResult.h
//  JTG
//
//  Created by LTOVE on 15/11/19.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "JTGHomeData.h"


@interface JTGHomeDataCellResult : NSObject


@property (nonatomic,strong) JTGHomeData *data;
/**
 *  页码
 */
@property (nonatomic,copy) NSString *pnum;

@end
