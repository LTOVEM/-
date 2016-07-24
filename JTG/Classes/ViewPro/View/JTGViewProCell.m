//
//  JTGViewProCell.m
//  JTG
//
//  Created by LTOVE on 15/11/23.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGViewProCell.h"

#import "JTGViewProNorItem.h"
#import "JTGViewProArrowItem.h"
#import "JTGViewProLabelItem.h"

#import "JTGDateCellItem.h"



#import "JTGViewProDataModel.h"

#import "JTGDatecelll.h"

@interface JTGViewProCell ()

@property (nonatomic,strong) UIImageView * arrowView;
//@property (nonatomic,strong) JTGDateCellItem * arrowView;

@end

@implementation JTGViewProCell

- (UIImageView *)arrowView
{
    if (!_arrowView) {
        _arrowView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"my_arrow_right"]];
    }
    return _arrowView;
}

- (UILabel *)lblView
{
    if (!_lblView) {
        _lblView = [[UILabel alloc]initWithFrame:self.bounds];
//        _lblView.centerX = screenW * 0.5;
        _lblView.x = 10;
//        _lblView.bounces = NO;
//        _lblView.scrollEnabled = NO;
        _lblView.numberOfLines = 0;
//        _lblView.
        [self addSubview:_lblView];
    }
    return _lblView;
}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *ID = @"cell";
    
    JTGViewProCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if (cell == nil) {
        cell = [[self alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return cell;
    
}

- (void)setItem:(JTGViewProNorItem *)item
{
    _item = item;
    [self setUpData];
    [self setUpViewModel];
}

- (void)setUpData
{
    self.textLabel.text = _item.title;
    self.textLabel.font = JTGViewProTextViewFont;
    self.textLabel.textColor = [UIColor redColor];
    self.detailTextLabel.text = _item.subTitle;
    self.imageView.image = _item.image;
}

- (void)setUpViewModel
{
    if ([_item isKindOfClass:[JTGViewProArrowItem class]]) {
        self.accessoryView = self.arrowView;
    }else if ([_item isKindOfClass:[JTGViewProLabelItem class]]){
        JTGViewProLabelItem *lblItem = (JTGViewProLabelItem *)_item;
        UILabel *lbl = self.lblView;
        lbl.font = JTGViewProTextViewFont;
        lbl.height = lblItem.heigh + 20;
        lbl.width = screenW - 20;
        self.width = screenW;
        lbl.text = lblItem.text;
    }else if ([_item isKindOfClass:[JTGDateCellItem class]]){
        JTGDateCellItem *dateItem = (JTGDateCellItem *)_item;
        JTGDatecelll *cellV = [[JTGDatecelll alloc]init];
        JTGViewProDataModel *dataModel = [[JTGViewProDataModel alloc]init];
        dataModel.dt = dateItem.dt;
        dataModel.num = dateItem.num;
        cellV.dataModel = dataModel;
        [self.contentView addSubview:cellV];
        
    }
}

@end
