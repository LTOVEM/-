//
//  JTGBasicGoodsController.h
//  JTG
//
//  Created by LTOVE on 15/11/22.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JTGBasicGoodsController : UITableViewController
@property (nonatomic,strong) NSMutableArray * goodsLists;
@property (nonatomic,strong) NSMutableArray *goodlist;

/**
 *  类型
 */
@property (nonatomic,copy) NSString *type;
/**
 *  分类ID
 */
@property (nonatomic,copy) NSString *idStr;
//- (void)loadNewData;

@property (nonatomic,copy) NSString * pgnm;
@end
