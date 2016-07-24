//
//  JTGBasicCell.h
//  JTG
//
//  Created by LTOVE on 15/11/18.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JTGNomalItem;
@interface JTGBasicCell : UITableViewCell

@property (nonatomic,strong) JTGNomalItem *item;

+ (instancetype)cellWithTableView:(UITableView *)tableView;

- (void)setIndexPath:(NSIndexPath *)indexPath rowCount:(int)rowCount;
@end
