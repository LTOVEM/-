//
//  JTGHomeListViewController.h
//  JTG
//
//  Created by LTOVE on 15/11/26.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGBasicGoodsController.h"
@class JTGListCateModel;
@interface JTGHomeListViewController : JTGBasicGoodsController

///**
// *  按钮标题
// */
//@property (nonatomic,copy) NSString *ti;
//
///**
// *  小图地址
// */
//@property (nonatomic,copy) NSString *imgs;

@property (nonatomic,strong) JTGListCateModel *model;
@end
