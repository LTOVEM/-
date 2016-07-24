//
//  JTGViewProController.m
//  JTG
//
//  Created by LTOVE on 15/11/23.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGViewProController.h"
#import "JTGViewProHeadView.h"

#import "MJRefresh.h"

#import "JTGDataTooll.h"

#import "JTGViewProCell.h"

#import "JTGViewProGroupItem.h"
#import "JTGViewProNorItem.h"
#import "JTGViewProLabelItem.h"

#import "JTGViewProCellFran.h"
#import "JTGViewProArrowItem.h"

#import "JTGViewProHeadGroupView.h"

#import "JTGViewProGroupModel.h"
#import "JTGDateCellItem.h"

#import "JTGPingFenView.h"

#import "JTGViewController.h"

#import "JTGZhuCheViewController.h"
#import "JTGLoginViewViewController.h"
@interface JTGViewProController ()<JTGViewProHeadViewDelegate>


@property (nonatomic,strong) JTGViewProHeadView * headView;
@property (nonatomic,assign) CGFloat cellHeigh;

@property (nonatomic,copy) NSString * groupTitle;


@end

@implementation JTGViewProController
- (void)JTGViewProHeadView:(JTGViewProHeadView *)JTGViewProHeadView buyBtnClick:(NSString *)inid goodName:(NSString *)goodName pri:(NSString *)pri
{
    if (![[NSUserDefaults standardUserDefaults]objectForKey:accoubt]) {
        JTGLoginViewViewController *zcView = [[JTGLoginViewViewController alloc]init];
        zcView.navigationItem.title = @"登录或注册";
        [self.navigationController pushViewController:zcView animated:YES];
    }else{
        JTGViewController *view = [[JTGViewController alloc]init];
        view.inid = inid;
        view.goodname = goodName;
        view.goodpri = pri;
        cs
        view.navigationItem.title = @"提交订单";
        [self.navigationController pushViewController:view animated:YES];
    }
    
}
- (instancetype)init
{
//    if (self = [super init]) {
//        
//    }
    return [self initWithStyle:UITableViewStyleGrouped];
}


- (NSMutableArray *)groups
{
    if (_groups == nil) {
        _groups = [NSMutableArray array];
    }
    return _groups;
}

- (JTGViewProHeadView *)headView
{
    if (!_headView) {
        _headView = [[JTGViewProHeadView alloc]init];
        _headView.delegate = self;
    }
    return _headView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.tableHeaderView = self.headView;
//    CGSize s = self.tableView.tableHeaderView.size;
//    s = self.headView.size;
    
//    NSLog(@"%@",NSStringFromCGSize(s));
    [self.tableView.tableHeaderView sizeToFit];
    typeof(self) homeVc = self;
    [self.tableView addHeaderWithCallback:^{
        [homeVc LoadData];
    }];
    
    [self.navigationItem setTitle:@"商品详情"];
    
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] init];
    
    backItem.title = @"商品信息";
    
    self.navigationItem.backBarButtonItem = backItem;
    
}
- (void)setCellFram:(JTGViewProCellFran *)cellFram
{
    _cellFram = cellFram;
//    设置表头图片
    self.headView.dataModel = cellFram.dataModel;
    
    [self setUpGroup0:cellFram];
//    设置第一组  商家信息
    [self setUpGroup1:cellFram];
//    第二组  套餐内容
    [self setUpGroup2:cellFram];
//    消费提醒
    [self setUpGroup3:cellFram];

}


- (void)setUpGroup0:(JTGViewProCellFran *)cellFram
{
    JTGDateCellItem *datecell = [[JTGDateCellItem alloc]init];
    datecell.dt = cellFram.dataModel.dt;
    datecell.num = cellFram.dataModel.num;
    datecell.heigh = 15;
    JTGViewProLabelItem *title = [[JTGViewProLabelItem alloc]init];
    title.text = cellFram.dataModel.ti;
    title.heigh = cellFram.tiTitleH;
    JTGViewProLabelItem *sub = [[JTGViewProLabelItem alloc]init];
    sub.text = cellFram.dataModel.con;
    sub.heigh = cellFram.tiH;
    JTGViewProGroupItem *groupItem = [[JTGViewProGroupItem alloc]init];
    groupItem.items = @[datecell,title,sub];
    [self.groups addObject:groupItem];
}

//商品详细介绍
- (void)setUpGroup3:(JTGViewProCellFran *)cellFram
{
    JTGViewProLabelItem *notice = [[JTGViewProLabelItem alloc]init];
    notice.text = cellFram.dataModel.xcon;
    notice.heigh = cellFram.noticH;
    NSLog(@"%f",notice.heigh);
    JTGViewProGroupItem *groupItem = [[JTGViewProGroupItem alloc]init];
    groupItem.headerTitle = @"商品详细介绍";
    groupItem.items = @[notice];
    [self.groups addObject:groupItem];
}
//配送时间
- (void)setUpGroup2:(JTGViewProCellFran *)cellFram
{
    JTGViewProLabelItem *conItem = [[JTGViewProLabelItem alloc]init];
    conItem.text = cellFram.dataModel.scon;
    conItem.heigh = cellFram.sconH;
    JTGViewProGroupItem *groupItem = [[JTGViewProGroupItem alloc]init];
    groupItem.headerTitle = @"配送时间";
    
    groupItem.items = @[conItem];
    [self.groups addObject:groupItem];

}
//第一组  商家信息
- (void)setUpGroup1:(JTGViewProCellFran *)cellFram
{
    JTGViewProLabelItem *infoSJ = [[JTGViewProLabelItem alloc]init];
    infoSJ.text = cellFram.dataModel.jcon;
//    NSLog(@"%@",model.jcon);
    infoSJ.heigh = cellFram.jconH;
    JTGViewProGroupItem *groupItem = [[JTGViewProGroupItem alloc]init];
    groupItem.items = @[infoSJ];
    groupItem.headerTitle = @"促销信息";
    [self.groups addObject:groupItem];
    
}
- (void)viewDidAppear:(BOOL)animated
{
    [self.tableView headerBeginRefreshing];
}

- (void)LoadData
{
    [JTGDataTooll loadViewProWithId:self.idStr success:^(NSArray *data) {
        self.cellFram = [data firstObject];
        [self.tableView headerEndRefreshing];
        [self.tableView reloadData];
    } failure:^(NSError *error) {
        
    }];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (void)setIdStr:(NSString *)idStr
//{
//    _idStr = idStr;
////    NSLog(@"%@---------",idStr);
//}

#pragma mark - Table view data source

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    JTGViewProGroupItem *groupItem = self.groups[section];
    return  groupItem.headerTitle;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    JTGViewProGroupItem *groupItem = self.groups[section];
    return groupItem.footerTitle;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return self.groups.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    JTGViewProGroupItem *groupItem = self.groups[section];
    return groupItem.items.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    JTGViewProCell *cell = [JTGViewProCell cellWithTableView:tableView];
    JTGViewProGroupItem *groupItem = self.groups[indexPath.section];
    JTGViewProNorItem *item = groupItem.items[indexPath.row];
    self.cellHeigh = item.heigh;
    cell.item = item;
    if (indexPath.section == 0 && indexPath.row == 0) {
        cell.lblView.font = JTGViewProTextViewTitleFont;
    }
    
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    JTGViewProGroupItem *groupItem = self.groups[indexPath.section];
    
    JTGViewProNorItem *item = groupItem.items[indexPath.row];
    return item.heigh + 15;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    if (section < 4) {
        
    
    JTGViewProHeadGroupView *viewl = [[JTGViewProHeadGroupView alloc]init];
    viewl.backgroundColor = [UIColor lightGrayColor];
    viewl.alpha = 0.8;
     JTGViewProGroupItem *groupItem = self.groups[section];
    JTGViewProGroupModel *model = [[JTGViewProGroupModel alloc]init];
    model.title = groupItem.headerTitle;
    viewl.groupModel = model;
    NSLog(@"%@",groupItem.headerTitle);
    
    return viewl;
    }else{
        JTGPingFenView *viewl = [[JTGPingFenView alloc]init];
        viewl.backgroundColor = [UIColor lightGrayColor];
        viewl.alpha = 0.8;
        JTGViewProGroupItem *groupItem = self.groups[section];
        JTGViewProDataModel *model = [[JTGViewProDataModel alloc]init];
        viewl.titlelb = groupItem.headerTitle;
        model.score = groupItem.score;
        model.pjper = groupItem.num;
        viewl.dataModel = model;
//        tableView.sectionHeaderHeight = 15;
        return viewl;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section == 4) {
        return 15;
    }else if(section > 0){
        return 25;
    }else
        return 0;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.tableView deselectRowAtIndexPath:indexPath animated:NO];
    NSLog(@"%ld组----%ld行",(long)indexPath.section,indexPath.row);
}

@end
