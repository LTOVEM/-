//
//  JTGGoodsListCell.h
//  JTG
//
//  Created by LTOVE on 15/11/22.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JTGGoodsList;
@interface JTGGoodsListCell : UITableViewCell
/**
 *  GoodsList模型
 */
@property (nonatomic,strong) JTGGoodsList *GoodsList;

+ (instancetype)cellWithTableView:(UITableView *)tableView;
@end
