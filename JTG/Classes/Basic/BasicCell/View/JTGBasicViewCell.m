//
//  JTGBasicViewCell.m
//  JTG
//
//  Created by LTOVE on 15/11/18.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGBasicViewCell.h"

#import "JTGNomalItem.h"
#import "JTGViewItem.h"


@interface JTGBasicViewCell ()

@property (nonatomic,strong) UIView * view;

@end

@implementation JTGBasicViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
//        self
    }
    return self;
}

- (void)awakeFromNib {
    // Initialization code
}


+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *ID = @"cell";
    JTGBasicViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell ==nil) {
        cell = [[self alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID];
    }
    return cell;
}

- (void)setItem:(JTGNomalItem *)item
{
    _item = item;
    //    设置数据
    [self setUpdata];
    //    设置模型
//    [self seyUpRightView];
}

- (void)setUpdata
{
    self.textLabel.text = _item.title;
    self.detailTextLabel.text = _item.subtitle;
    self.imageView.image = _item.image;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
