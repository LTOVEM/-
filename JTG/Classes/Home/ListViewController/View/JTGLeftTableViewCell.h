//
//  JTGLeftTableViewCell.h
//  JTG
//
//  Created by LTOVE on 15/11/29.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JTGListCateModel;
@interface JTGLeftTableViewCell : UITableViewCell


+ (instancetype)cellWithTableView:(UITableView *)tableView;
//
//@property (nonatomic,copy) NSString *text;

@property (nonatomic,strong) JTGListCateModel *model;

@property (nonatomic,copy) NSString *text;

@property (nonatomic,strong) UIImage *images;

@end
