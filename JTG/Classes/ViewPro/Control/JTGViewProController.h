//
//  JTGViewProController.h
//  JTG
//
//  Created by LTOVE on 15/11/23.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JTGViewProCellFran;

@interface JTGViewProController : UITableViewController

@property (nonatomic,copy) NSString *idStr;

@property (nonatomic,strong) JTGViewProCellFran *cellFram;

@property (nonatomic, strong) NSMutableArray *groups;

@end
