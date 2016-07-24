//
//  JTGGoodsListCell.m
//  JTG
//
//  Created by LTOVE on 15/11/22.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGGoodsListCell.h"

#import "JTGImageView.h"
#import "JTGGoodsList.h"

#define maginx   8
#define maginY  10
#define magin 15
@interface JTGGoodsListCell ()

@property (nonatomic,weak) JTGImageView *imagView;


@property (nonatomic,weak) UILabel * title;
@property (nonatomic,weak) UILabel * detial;
@property (nonatomic,weak) UILabel * priceNow;
@property (nonatomic,weak) UILabel * price;//原价
@property (nonatomic,weak) UILabel * count;

@end
@implementation JTGGoodsListCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setUpAllSubviews];
    }
    return self;
}

- (void)setUpAllSubviews
{
//    设置图片
    JTGImageView *imgV = [[JTGImageView alloc]init];
    [self.contentView addSubview:imgV];
    _imagView = imgV;
//    设置标题
    UILabel *title = [[UILabel alloc]init];
    [self.contentView addSubview:title];
    _title = title;
//    设置描述
    UILabel *detail = [[UILabel alloc]init];
    [self.contentView addSubview:detail];
    _detial = detail;
//    设置价格  现价
    UILabel *priceNow = [[UILabel alloc]init];
    [self.contentView addSubview:priceNow];
    _priceNow = priceNow;
//    设置价格 原价
    UILabel *price = [[UILabel alloc]init];
    [self.contentView addSubview:price];
    _price = price;
    
//    设置购买人数
    UILabel *count = [[UILabel alloc]init];
    [self.contentView addSubview:count];
    _count = count;
    
}

- (void)setGoodsList:(JTGGoodsList *)GoodsList
{
    _GoodsList = GoodsList;
//    设置商品图片
    self.imagView.GoodsList = GoodsList;
//    设置标题
    self.title.text = GoodsList.ti;
    self.title.font = [UIFont systemFontOfSize:15];
    [self.title sizeToFit];
//    设置描述
    self.detial.text = GoodsList.con;
    self.detial.font = [UIFont systemFontOfSize:12];
    self.detial.numberOfLines = 0;
    
//    CGSize size = [GoodsList.con sizeWithFont:[UIFont systemFontOfSize:12] constrainedToSize:CGSizeMake(self.width - self.imagView.width -25, 28)];
    self.detial.size = CGSizeMake(self.width - self.imagView.width -30, 30);
//    self.detial.preferredMaxLayoutWidth = self.width -self.imagView.width - 20;
//    [self.detial sizeToFit];
//    设置商品价格  现价
    NSString *nowP = @"￥ ";
    nowP = [nowP stringByAppendingString:GoodsList.fpri];
    self.priceNow.text = nowP;
    self.priceNow.textColor = [UIColor redColor];
    self.priceNow.font = [UIFont systemFontOfSize:12];
    [self.priceNow sizeToFit];
    
//    设置价格 原价
    NSString *pr = @"/";
    pr = [pr stringByAppendingString:GoodsList.pri];
    self.price.text = pr;
    self.price.font = [UIFont systemFontOfSize:12];
    self.price.textColor = [UIColor lightGrayColor];
    [self.price sizeToFit];
//    设置购买人数
    NSString *count = [GoodsList.num stringByAppendingString:@"人"];
    self.count.font = [UIFont systemFontOfSize:12];
    self.count.text = count;
    [self.count sizeToFit];
    
    [self setFrames];
    
}


+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *ID = @"cell";
    JTGGoodsListCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[JTGGoodsListCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    return cell;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setFrames
{
    [super layoutSubviews];
    
    //    设置商品图片
    CGFloat x = maginx;
    CGFloat y = maginY;
    CGFloat h = self.width * 0.23;
    CGFloat w = 1.7 * h;
    self.imagView.frame = CGRectMake(x, y, w, h);
    //    设置标题
    x = CGRectGetMaxX(self.imagView.frame) + magin;
    self.title.point = CGPointMake(x, y);
    //    设置描述
    y = CGRectGetMaxY(self.title.frame) + 5;
    
    self.detial.point = CGPointMake(x, y);
    //    设置商品价格  现价
    y = self.height - maginY - self.priceNow.height;
    self.priceNow.point = CGPointMake(x, y);
    //    设置价格 原价
    x = CGRectGetMaxX(self.priceNow.frame);
    self.price.point = CGPointMake(x, y);
    //    设置购买人数
    x = self.width - self.count.width - 4;
    self.count.point = CGPointMake(x, y);
    
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    [self setFrames];
}

@end
