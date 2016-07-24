//
//  JTGBasicCell.m
//  JTG
//
//  Created by LTOVE on 15/11/18.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGBasicCell.h"

#import "JTGPrifileFirstCellView.h"
#import "JTGPriFileFirstCell.h"
//#import "JTGNomalItem.h"
#import "JTGArrowItem.h"
#import "JTGProfileTwoCell.h"
#import "JTGProfileTwoCellView.h"
#import "JTGlabelItem.h"



#define JTGLablItemFont [UIFont systemFontOfSize:12]
@interface JTGBasicCell ()

@property (nonatomic,strong) JTGPrifileFirstCellView * priFileFirstView;

@property (nonatomic,strong) UIImageView * arrowView;

@property (nonatomic,strong) UILabel * labelView;

@end

@implementation JTGBasicCell

- (UILabel *)labelView
{
    if (!_labelView) {
        _labelView = [[UILabel alloc]init];
        _labelView.font = JTGLablItemFont;
//        [self addSubview:_labelView];
    }
    return _labelView;
}

- (UIImageView *)arrowView
{
    if (!_arrowView) {
        _arrowView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"my_arrow_right"]];
    }
    return _arrowView;
}

- (JTGPrifileFirstCellView *)priFileFirstView
{
    if (!_priFileFirstView) {
        _priFileFirstView = [[JTGPrifileFirstCellView alloc]init];
    }
    return _priFileFirstView;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    

    // Configure the view for the selected state
}


+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *ID = @"cell";
    JTGBasicCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[self alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID];
        
    }
    cell.backgroundColor = [UIColor clearColor];
    return cell;
}

#pragma mark - itemSet 方法
- (void)setItem:(JTGNomalItem *)item
{
    _item = item;
//    设置数据
    [self setData];
//    设置模型
    [self SetCellModel];
}

//设置数据
- (void)setData
{
    self.textLabel.text = _item.title;
    self.detailTextLabel.text = _item.subtitle;
    self.imageView.image = _item.image;
}

//设置cell模型
- (void)SetCellModel
{
    if ([_item isKindOfClass:[JTGPriFileFirstCell class]]) {
//        [self.superview removeFromSuperview];
        JTGPrifileFirstCellView *view = [[JTGPrifileFirstCellView alloc]init];
        JTGPriFileFirstCell *pfrgileItem = (JTGPriFileFirstCell *)_item;
        view.userName = pfrgileItem.textLbl;
        [self.contentView addSubview:view];
    }else if ([_item isKindOfClass:[JTGArrowItem class]]){
        self.accessoryView = self.arrowView;
    }else if ([_item isKindOfClass:[JTGProfileTwoCell class]]){
        JTGProfileTwoCellView *view = [[JTGProfileTwoCellView alloc]init];
        JTGProfileTwoCell *twoItem = (JTGProfileTwoCell *)_item;
        view.listCount = twoItem.listCount;
        for (NSString *str in twoItem.listCount) {
            NSLog(@"%@",str);
        }
        [self.contentView addSubview:view];
    }else if ([_item isKindOfClass:[JTGlabelItem class]]){
        JTGlabelItem *labl = (JTGlabelItem *)_item;
        self.labelView.text = labl.text;
        [self.labelView sizeToFit];
        self.accessoryView = self.labelView;
        
    }
    
}


- (void)setIndexPath:(NSIndexPath *)indexPath rowCount:(int)rowCount
{
//    UIImageView *bgView = (UIImageView *)self.backgroundView;
//    UIImageView *selBgView = (UIImageView *)self.selectedBackgroundView;
//    if (rowCount == 1) { // 只有一行
//        bgView.image = [UIImage resizableWithImageName:@"common_card_background"];
//        selBgView.image = [UIImage resizableWithImageName:@"common_card_background_highlighted"];
//        
//    }else if(indexPath.row == 0){ // 顶部cell
//        bgView.image = [UIImage resizableWithImageName:@"common_card_top_background"];
//        selBgView.image = [UIImage resizableWithImageName:@"common_card_top_background_highlighted"];
//        
//    }else if (indexPath.row == rowCount - 1){ // 底部
//        bgView.image = [UIImage resizableWithImageName:@"common_card_bottom_background"];
//        selBgView.image = [UIImage resizableWithImageName:@"common_card_bottom_background_highlighted"];
//        
//    }else{ // 中间
//        bgView.image = [UIImage resizableWithImageName:@"common_card_middle_background"];
//        selBgView.image = [UIImage resizableWithImageName:@"common_card_middle_background_highlighted"];
//    }
//    

}
@end
