//
//  JTGViewProCell.h
//  JTG
//
//  Created by LTOVE on 15/11/23.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JTGViewProNorItem;
@interface JTGViewProCell : UITableViewCell
@property (nonatomic,strong) JTGViewProNorItem *item;
@property (nonatomic,strong) UILabel * lblView;
+ (instancetype)cellWithTableView:(UITableView *)tableView;

@end
