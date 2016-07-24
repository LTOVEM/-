//
//  JTGViewProCellFran.m
//  JTG
//
//  Created by LTOVE on 15/11/24.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGViewProCellFran.h"


#import "JTGViewProDataModel.h"

@implementation JTGViewProCellFran



- (void)setDataModel:(JTGViewProDataModel *)dataModel
{
    _dataModel = dataModel;
//    计算Heigh
    [self sizeWithText:dataModel];
//    计算行高
    
}

- (void)sizeWithText:(JTGViewProDataModel *)model
{
//    商品内容
//    title
    
    self.tiTitleH = [model.ti boundingRectWithSize:CGSizeMake(screenW, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:JTGViewProTextViewTitleFont} context:nil].size.height;
    self.tiH = [self heighWithStr:model.con];
   
    
    
//    商家信息
    self.jconH = [self heighWithStr:model.jcon];
//    self.cellHeights[1][0] = @(self.jconH);
//    
//    套餐内容
    self.sconH = [self heighWithStr:model.scon];
    self.heigh = [self heighWithStr:@"查看图文详情"];
//    消费提醒
    self.noticH = [self heighWithStr:model.xcon];
//    self.cellHeights = @(self.noticH);
//    
    
}



- (CGFloat)heighWithStr:(NSString *)str
{
    return [str boundingRectWithSize:CGSizeMake(screenW-25, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:JTGViewProTextViewFont} context:nil].size.height;
//    return [str sizeWithFont:JTGViewProTextViewFont constrainedToSize:CGSizeMake(screenW - 10, MAXFLOAT) lineBreakMode:UILineBreakModeWordWrap].height;
}

@end
