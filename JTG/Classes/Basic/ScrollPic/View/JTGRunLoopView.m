//
//  JTGRunLoopView.m
//  JTG
//
//  Created by LTOVE on 15/11/23.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGRunLoopView.h"

#import "JTGRunLoopList.h"
#import "JTGRunLoopCell.h"

#import "JTGDataTooll.h"


#import "MJExtension.h"

@interface JTGRunLoopView ()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>


@property (nonatomic,strong) NSTimer * time;
@property (nonatomic,assign) NSUInteger  page;

@end

@implementation JTGRunLoopView

//static NSString * const reuseIdentifier = @"Cell";

//- (NSArray *)dataArry
//{
//    if (!_dataArry) {
//        _dataArry = [NSArray array];
//    }
//    return _dataArry;
//}

- (instancetype)init
{
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    layout.itemSize = CGSizeMake(screenW, screenW / 3.16);
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
//    清空行距
    layout.minimumLineSpacing = 0;
        self.delegate = self;
        self.dataSource = self;
    self.backgroundColor = [UIColor clearColor];
//    [self loadData];
    return [self initWithFrame:CGRectMake(0, 0, screenW, screenW / 3.16) collectionViewLayout:layout];
}

- (void)setDataArry:(NSArray *)dataArry
{
    _dataArry = dataArry;
//    for (NSString *arraystr in dataArry) {
//        NSLog(@"%@",arraystr);
//    }
    [self reloadData];
//    [self reloadData];
    [self setUpPadgeCount];
    [self startTimer];
}

- (void)startTimer
{
self.time = [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(scrollImage) userInfo:nil repeats:YES];
}
- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
//    NSLog(@"%lu",(unsigned long)self.dataArry.count);
    return self.dataArry.count;
//    return 2;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    JTGRunLoopCell *cell = [JTGRunLoopCell cellWithCollectionView:collectionView indexPath:indexPath];
    NSString *imageUrlStr = self.dataArry[indexPath.row];
    cell.imageUrlStr = imageUrlStr;;
    return cell;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    self.page = scrollView.contentOffset.x / scrollView.width + 0.5;
    if ([_delegatel respondsToSelector:@selector(runLoop:)]) {
        [_delegatel runLoop:(JTGRunLoopView *)scrollView];
    }
}



- (void)setUpPadgeCount
{
    if ([_delegatel respondsToSelector:@selector(runLoop:count:)]) {
        [_delegatel runLoop:self count:self.dataArry.count];
    }

}

- (void)scrollImage
{
    if (self.page == self.dataArry.count - 1) {
        self.page = 0;
    }else{
        self.page ++;
    }
    CGFloat offsetX = self.page * self.width;
    
    [self setContentOffset:CGPointMake(offsetX, 0) animated:YES];
}


- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    [self.time invalidate];
    self.time = nil;
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    [self startTimer];
}
@end
