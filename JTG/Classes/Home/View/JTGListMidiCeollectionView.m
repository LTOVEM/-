//
//  JTGListMidiCeollectionView.m
//  JTG
//
//  Created by LTOVE on 15/11/25.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGListMidiCeollectionView.h"
#import "JTGMidiCell.h"
#import "JTGListNorItem.h"
#import "JTGListGroupItem.h"
#import "JTGListCateModel.h"
#import "JTGButtonItem.h"
#import "JTGListBigButtonItem.h"


#import "MJExtension.h"

@interface JTGListMidiCeollectionView ()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

@property (nonatomic,strong) NSMutableArray * groupArray;

@end

@implementation JTGListMidiCeollectionView


- (NSMutableArray *)groupArray
{
    if (!_groupArray) {
        _groupArray = [NSMutableArray array];
    }
    return _groupArray;
}

- (void)setDataArray:(NSArray *)dataArray
{
    _dataArray = dataArray;
    
    self.groupArray =(NSMutableArray *) dataArray;
    [self reloadData];
}
//- (void)setAdArray:(NSArray *)AdArray
//{
//    _AdArray = AdArray;
//    [self.groupArray addObject:AdArray];
//    [self reloadData];
//}
- (instancetype)init
{
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    layout.itemSize = CGSizeMake(screenW, screenW * 0.4);
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    layout.minimumLineSpacing = 3;
    self.delegate = self;
    self.dataSource = self;
    self.backgroundColor = [UIColor redColor];
    return [self initWithFrame:CGRectMake(0, 0, screenW,  screenW * 0.55) collectionViewLayout:layout];
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    
//    NSLog(@"%ld",self.dataArray.count);
    return self.dataArray.count;
    
    
    
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(0, 5, 0, 5);
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    JTGMidiCell *cell = [JTGMidiCell cellWithCollectionView:collectionView indexPath:indexPath];
    JTGListCateModel *listModel = self.groupArray[indexPath.row];
//    NSLog(@"%@",listModel.keyValues);
    cell.listModel = listModel;
//    cell.backgroundColor = [UIColor clearColor];
    
    return cell;
    
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake( (screenW - 20)/4 - 0.5 , (screenW - 20)/4 - 0.5 );
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 1;
}
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 10;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"ee");
    if (indexPath.row < 8) {
        JTGListCateModel *listModel = self.groupArray[indexPath.row];
        NSLog(@"%@",listModel.id);
        if ([_delegatel respondsToSelector:@selector(ListMidWith:idstr:title:images:)]) {
            [_delegatel ListMidWith:self idstr:listModel.id title:listModel.ti images:listModel.imgs];
        }
    }else{
#warning 待完成 点击分类更多
        NSLog(@"待完成 点击更多时间");
        if ([_delegatel respondsToSelector:@selector(ListMidWith:)]) {
            [_delegatel ListMidWith:self];
        }
    }
    
}
@end
