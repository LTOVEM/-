//
//  JTGOneViewController.h
//  JTG
//
//  Created by LTOVE on 15/11/28.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JTGListCateModel,JTGOneViewController;
@protocol JTGOneViewControllerDelegate <NSObject>

-(void)OneView:(JTGOneViewController *)oneVc idStr:(NSString *)idStr;

@end
@interface JTGOneViewController : UITableViewController

/**
 *  数据模型
 */
@property (nonatomic,strong) NSMutableArray *Arraymodel;

@property (nonatomic,copy) NSString *idStr;

@property (nonatomic,weak) id <JTGOneViewControllerDelegate> delegate;

@end
