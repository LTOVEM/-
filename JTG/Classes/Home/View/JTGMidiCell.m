//
//  JTGMidiCell.m
//  JTG
//
//  Created by LTOVE on 15/11/25.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGMidiCell.h"

#import "JTGListCellView.h"


#import "JTGButtonItem.h"
#import "JTGListBigButtonItem.h"

#import "JTGListCateModel.h"
#import "JTGListNorItem.h"

#import "UIImageView+WebCache.h"
static NSString *const resuIdenty = @"cell";
static UICollectionView *_collectionView;
@interface JTGMidiCell ()

@property (nonatomic,strong) JTGListCellView * cellView;

@property (nonatomic,weak) UIImageView * imagev;
@end

@implementation JTGMidiCell

- (UIImageView *)imagev
{
    if (!_imagev) {
        UIImageView *imageV = [[UIImageView alloc]initWithFrame:self.bounds];
        _imagev = imageV;
        [self addSubview:imageV];
    }
    return _imagev;
}

- (JTGListCellView *)cellView
{
    if (!_cellView) {
//        self.size = CGSizeMake((screenW - 20)/4, (screenW - 20)/4);
        _cellView = [[JTGListCellView alloc]initWithFrame:self.bounds];
//        self.backgroundColor = [UIColor yellowColor];
//        _cellView.backgroundColor = [UIColor redColor];
//        [self addSubview:_cellView];
    }
    return _cellView;
}


+ (instancetype)cellWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath
{
    if (_collectionView == nil) {
        _collectionView = collectionView;
        [collectionView registerClass:[JTGMidiCell class] forCellWithReuseIdentifier:resuIdenty];
    }
    return  [collectionView dequeueReusableCellWithReuseIdentifier:resuIdenty forIndexPath:indexPath];
}

- (void)setListModel:(JTGListCateModel *)listModel
{
    _listModel = listModel;
    
//    [self.imagev sd_setImageWithURL:[NSURL URLWithString:listModel.img]];
    self.cellView.listModel = listModel;
    [self addSubview:self.cellView];
}

@end
