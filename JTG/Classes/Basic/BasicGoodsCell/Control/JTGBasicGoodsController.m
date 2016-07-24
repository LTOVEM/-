//
//  JTGBasicGoodsController.m
//  JTG
//
//  Created by LTOVE on 15/11/22.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGBasicGoodsController.h"
#import "JTGGoodsListCell.h"
#import "JTGGoodsList.h"

#import "JTGDataTooll.h"

#import "MJRefresh.h"

#import "JTGHomeData.h"

#import "JTGViewProController.h"

@interface JTGBasicGoodsController ()



@end

@implementation JTGBasicGoodsController

//- (NSMutableArray *)goodlist
//{
//    if (!_goodlist) {
//        _goodlist = [NSMutableArray array];
//    }
//    return _goodlist;
//}

- (NSMutableArray *)goodsLists
{
    if (!_goodsLists) {
        _goodsLists = [NSMutableArray array];
    }
    return _goodsLists;
}

- (void)setGoodlist:(NSMutableArray *)goodlist
{
    _goodlist = goodlist;
    self.goodsLists = goodlist;
    [self.tableView reloadData];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    
    
    //    [self loadData];
    
    //    [self.tableView headerBeginRefreshing];
    
    //    [self.tableView headerBeginRefreshing];
    
    typeof(self) homeVc = self;
    [self.tableView addHeaderWithCallback:^{
        [homeVc loadNewData];
    }];
    
    [self.tableView addFooterWithCallback:^{
        [homeVc loadMoreData];
    }];
    
    
    [self.tableView headerBeginRefreshing];
    
}

- (void)loadNewData
{

    NSLog(@"%@--%@",self.type,self.idStr);
    [JTGDataTooll loadHomeDataWithType:self.type id:self.idStr pgnm:self.pgnm success:^(NSArray *items, NSString *pgnum) {
        NSLog(@"%ld",items.count);
        int  pg = [pgnum intValue];
        [self headerRef:items];
        pg ++;
        self.pgnm = [NSString stringWithFormat:@"%d",pg];
        
    } failure:^(NSError *error) {
        
    }];
}


- (void)loadMoreData
{
    [JTGDataTooll loadHomeDataWithType:self.type id:self.idStr pgnm:self.pgnm success:^(NSArray *items, NSString *pgnum) {
        int  pg = [pgnum intValue];
        pg ++;
        self.pgnm = [NSString stringWithFormat:@"%d",pg];
        
        [self.goodsLists addObjectsFromArray:items];
        [self.tableView reloadData];
        [self.tableView footerEndRefreshing];
        if (items.count == 0) {
            [self.tableView removeFooter];
        }
        
    } failure:^(NSError *error) {
        
    }];
}

- (void)headerRef:(NSArray *)items
{
    NSUInteger count = items.count;
    
//    NSIndexSet *indexSet = [NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, count)];
    [self.goodsLists removeAllObjects];
//    [self.goodsLists insertObjects:items atIndexes:indexSet];
    [self.goodsLists addObjectsFromArray:items];
    [self.tableView reloadData];
    [self.tableView headerEndRefreshing];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.goodsLists.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    JTGGoodsListCell *cell = [JTGGoodsListCell cellWithTableView:tableView];
    
    JTGGoodsList *list = self.goodsLists[indexPath.row];
//    JTGUnionObject *unObject = [_goodsArray objectAtIndex:indexPath.row];
    [self.goodlist setObject:list.id atIndexedSubscript:indexPath.row];
    
    cell.GoodsList = list;
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 85;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    JTGGoodsList *lists = [self.goodsLists objectAtIndex:indexPath.row];
        NSLog(@"%@",lists);
    
    JTGViewProController *vc = [[JTGViewProController alloc]init];
    //    vc.view.backgroundColor = [UIColor whiteColor];
    vc.idStr = lists.id;
    
    [self.navigationController pushViewController:vc animated:YES];
}
//- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    NSString *lists = [self.goodlist objectAtIndex:indexPath.row];
////    NSLog(@"%@",lists);
//    
//    JTGViewProController *vc = [[JTGViewProController alloc]init];
////    vc.view.backgroundColor = [UIColor whiteColor];
//    vc.idStr = lists;
//    
//    [self.navigationController pushViewController:vc animated:YES];
//}
//
//- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    [self tableView:tableView didDeselectRowAtIndexPath:indexPath];
//    return indexPath;
//}


@end
