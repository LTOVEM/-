//
//  JTGOneViewController.m
//  JTG
//
//  Created by LTOVE on 15/11/28.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGOneViewController.h"

#import "MJExtension.h"
#import "JTGListCateModel.h"

#import "JTGBasicUrl.h"

#import "UIImageView+WebCache.h"

#import "JTGLeftTableViewCell.h"

@interface JTGOneViewController ()

@property (nonatomic,strong) NSArray * arrayData;

@property (nonatomic,assign) int  count;

@end

@implementation JTGOneViewController

- (NSArray *)arrayData
{
    if (!_arrayData) {
        _arrayData = [NSArray array];
    }
    return _arrayData;
}

- (void)setIdStr:(NSString *)idStr
{
    _idStr = idStr;
    
    int i = 1;
    for (JTGListCateModel *model in self.arrayData) {
        if ([model.id isEqualToString:idStr]) {
            self.count = i ;
            
        }
        i++;
    }
    
    NSIndexPath *indexPath = [NSIndexPath indexPathForItem:self.count inSection:0];
    [self.tableView selectRowAtIndexPath:indexPath animated:YES scrollPosition:UITableViewScrollPositionNone];

}

- (void)viewWillAppear:(BOOL)animated
{
    NSIndexPath *indexPath = [NSIndexPath indexPathForItem:self.count inSection:0];
    [self.tableView selectRowAtIndexPath:indexPath animated:YES scrollPosition:UITableViewScrollPositionNone];

}

- (void)setArraymodel:(NSArray *)Arraymodel
{
    
    self.arrayData = Arraymodel;
//    [self.tableView reloadData];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    self.tableView.scrollEnabled = NO;
    self.tableView.contentInset = UIEdgeInsetsMake(0, 0, 0, 0);
    
    
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return self.arrayData.count + 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    JTGLeftTableViewCell *cell = [JTGLeftTableViewCell cellWithTableView:tableView];
    if (indexPath.row == 0) {
        cell.images = [UIImage imageNamed:@"category_all_selected"];
        cell.text = @"全部分类";
    }else{
    JTGListCateModel *model = self.arrayData[indexPath.row - 1];
//
    NSString *urlStr = [[JTGBasicUrl url].URLString stringByAppendingString:model.imgs];
    model.imgs = urlStr;
//        if (self.count == indexPath.row) {
//            cell.selected = YES;
//        }
    
    cell.model = model;
    }
    
    
    cell.backgroundColor = [UIColor clearColor];
    
//    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;

}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 30;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    NSLog(@"%@------",indexPath);if
    if (indexPath.row == 0) return;
        
    JTGListCateModel *model = self.arrayData[indexPath.row -1];
    NSLog(@"%@",model.id);
    if ([_delegate respondsToSelector:@selector(OneView:idStr:)]) {
        [_delegate OneView:self idStr:model.id];
    }
}

@end
