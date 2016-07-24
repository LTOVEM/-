//
//  JTGBasicViewCell.h
//  JTG
//
//  Created by LTOVE on 15/11/18.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JTGNomalItem;

@interface JTGBasicViewCell : UITableViewCell

@property (nonatomic,strong) JTGNomalItem *item;
+ (instancetype)ccellWithTableView:(UITableView *)tableView;
- (void)setIndexPath:(NSIndexPath *)indexPath rowCount:(int)rowCount;

@end
