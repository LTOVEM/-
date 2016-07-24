//
//  JTGLeftTableViewCell.m
//  JTG
//
//  Created by LTOVE on 15/11/29.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGLeftTableViewCell.h"
#import "JTGListCateModel.h"
#import "UIImageView+WebCache.h"

#define magin 15
@interface JTGLeftTableViewCell ()


//@property (nonatomic,weak) UIImageView * imageViews;
//
//@property (nonatomic,copy) NSString *text;

@property (nonatomic,weak) UIImageView * imageViews;

@property (nonatomic,weak) UILabel *lbltext;

@property (nonatomic,copy) NSString * urlStr;

@end


@implementation JTGLeftTableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *ID = @"cell";
    JTGLeftTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[JTGLeftTableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    UIView *backV = [[UIView alloc]initWithFrame:cell.bounds];
    backV.backgroundColor = [UIColor whiteColor];
    cell.selectedBackgroundView = backV;
    
    return cell;
}

- (void)setModel:(JTGListCateModel *)model
{
    _model = model;
    
    int thum = [model.tnum intValue];
    NSString *ti = [NSString stringWithFormat:@"%@ (%d)",model.ti,thum];
    self.lbltext.text = ti;
    
//    self.urlStr = model.imgs;
    [self.imageViews sd_setImageWithURL:[NSURL URLWithString:model.imgs] placeholderImage:[UIImage imageNamed:@"tgw"]];
    [self setFrams];
}

- (void)setImages:(UIImage *)images
{
    _images = images;
    self.imageViews.image = images;
    [self setFrams];
}
- (void)setText:(NSString *)text
{
    _text = text;
    self.lbltext.text = text;
    [self setFrams];
}
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setUpAllSubviews];
    }
    return self;
}

- (void)setUpAllSubviews
{
    UIImageView *imageV = [[UIImageView alloc]init];
    imageV.size = CGSizeMake(25, 25);
    _imageViews = imageV;
    
    [self.contentView addSubview:imageV];
    
    UILabel *lblText = [[UILabel alloc]init];
    _lbltext = lblText;
    lblText.font = JTGViewProTextViewFont;
    lblText.textColor = [UIColor whiteColor];
    lblText.highlightedTextColor = [UIColor redColor];
    [self.contentView addSubview:lblText];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setFrams
{
    
    [self.lbltext sizeToFit];
    CGFloat x = 25;
    NSLog(@"%lf",self.height);
    self.imageViews.centerY = 15;
    self.lbltext.centerY = 15;
    self.imageViews.x = x;
    x = CGRectGetMaxX(self.imageViews.frame) + magin;
    self.lbltext.x = x;
}

@end
