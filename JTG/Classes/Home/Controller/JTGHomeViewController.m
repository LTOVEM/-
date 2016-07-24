//
//  JTGHomeViewController.m
//  JTG
//
//  Created by LTOVE on 15/11/18.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGHomeViewController.h"

#import "JTGHomeTopView.h"


#import "JTGDataTooll.h"
#import "JTGRunLoopView.h"
#import "JTGRunLoopList.h"
#import "MJRefresh.h"

#import "JTGHomeTopViews.h"
#import "JTGHomeAdViewController.h"
#import "JTGHomeListViewController.h"

#import "JTGAllCateViewController.h"

#import "JTGListCateModel.h"

@interface JTGHomeViewController ()<JTGHomeDeleGate>


@property (nonatomic,weak) JTGHomeTopViews * topView;
@end
@implementation JTGHomeViewController

- (void)homeAd:(JTGHomeTopViews *)homeTopView
{
    JTGAllCateViewController *vc = [[JTGAllCateViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)homeAd:(JTGHomeTopViews *)homeTopView ListId:(NSString *)listId title:(NSString *)title images:(NSString *)images
{
    JTGHomeListViewController *HomeVc = [[JTGHomeListViewController alloc]init];
    HomeVc.idStr = listId;
    HomeVc.type = @"2";
    JTGListCateModel *listModel = [[JTGListCateModel alloc]init];
    listModel.ti = title;
    listModel.imgs = images;
//    NSLog(@"%@-%@",listId,title);
    listModel.id = listId;
//    HomeVc.ti = title;
//    HomeVc.imgs =images;
    HomeVc.model = listModel;
    HomeVc.navigationItem.title = title;
    [self.navigationController pushViewController:HomeVc animated:YES];
}
//- (void)homeAd:(JTGHomeTopViews *)homeTopView LinkId:(NSString *)likId
//{
//    JTGHomeAdViewController *homeAdVc = [[JTGHomeAdViewController alloc]init];
//    homeAdVc.idStr = likId;
//    homeAdVc.type = @"3";
//    [self hidesBottomBarWhenPushed];
//    [self.navigationController pushViewController:homeAdVc animated:YES];
//}

- (NSString *)type
{
    
    return @"1";
}
- (NSString *)idStr
{
    return nil;
}

- (instancetype)init
{
    if (self = [super init]) {
        [self loadData];
    }
    return [self initWithStyle:UITableViewStyleGrouped];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    JTGHomeTopViews *view = [[JTGHomeTopViews alloc]init];
    view.size = CGSizeMake(self.view.width, screenW-50 );
    self.topView = view;
    self.topView.delegate = self;
    self.tableView.tableHeaderView = view;
    
//    self.tableView.style = UITableViewStylePlain;
//    self.tableView.style = UITableViewStylePlain;
    self.navigationItem.title = @"团购";
    
}

- (void)loadData
{
    [JTGDataTooll LoadRunLoopPicsWithsuccess:^(NSArray *items) {
//        JTGRunLoopView *view = [[JTGRunLoopView alloc]init];
        //        JTGRunLoopList *list = [[JTGRunLoopList alloc]init];
        NSMutableArray *arrList = [NSMutableArray array];
        for (JTGRunLoopList *list in items) {
            [arrList addObject:list.img];
        }
        self.topView.scrowArray = arrList;
        
    
        
    } failure:^(NSError *error) {
        
    }];
    
//    加载中间数据
    [JTGDataTooll loadListGateWithType:@"1" id:nil success:^(NSArray *items, NSArray *Aditems) {
        
        self.topView.dateArray = items;
        self.topView.AdArray = Aditems;
//        NSLog(@"%ld",Aditems.count);
    } failure:^(NSError *error) {
        
    }];
}


//- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
//{
//    return @"热门团购";
//}

@end
