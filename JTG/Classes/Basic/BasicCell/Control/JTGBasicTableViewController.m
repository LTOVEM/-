//
//  JTGBasicTableViewController.m
//  JTG
//
//  Created by LTOVE on 15/11/18.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGBasicTableViewController.h"

#import "JTGGroupItem.h"
#import "JTGNomalItem.h"

#import "JTGBasicCell.h"


@interface JTGBasicTableViewController ()

@end

@implementation JTGBasicTableViewController

- (instancetype)init
{
    return [self initWithStyle:UITableViewStyleGrouped];
//    return self;
}

- (NSMutableArray *)groups
{
    if (!_groups) {
        _groups = [NSMutableArray array];
    }
    return _groups;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.tableView.backgroundColor = GWColor(234, 234, 234, 1);
    self.tableView.sectionHeaderHeight = 0;
    self.tableView.sectionFooterHeight = 0;
    self.tableView.contentInset = UIEdgeInsetsMake(-25, 0, 0, 0);
    
//    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
//设置底部标题
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    JTGGroupItem *groupItem = self.groups[section];
    return groupItem.footerTitle;
}
//设置头部标题
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    JTGGroupItem *groupItem = self.groups[section];
    return groupItem.headerTitle;
}
//设置组数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    
    return self.groups.count;
}
//设置每组的行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    JTGGroupItem *groupItem = self.groups[section];
    return groupItem.items.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    JTGBasicCell *cell = [JTGBasicCell cellWithTableView:tableView];
    
    JTGGroupItem *groupItem = self.groups[indexPath.section];
    JTGNomalItem *item = groupItem.items[indexPath.row];
    cell.item = item;
    
    [cell setIndexPath:indexPath rowCount:(int)groupItem.items.count];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    [tableView deselectRowAtIndexPath:self.groups[indexPath.section] animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
//    NSLog(@"%ld",(long)indexPath.row);
    JTGGroupItem *groupItem = self.groups[indexPath.section];
    JTGNomalItem *item = groupItem.items[indexPath.row];
    if (item.option) {
        item.option();
        return;
    }
//    NSLog(@"%@",item.descVc);
    if (item.descVc) {
        UIViewController *vc = [[item.descVc alloc]init];
        vc.title = item.title;
        
        [self.navigationController pushViewController:vc animated:YES];
    }
}
- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self tableView:tableView didDeselectRowAtIndexPath:indexPath];
    return indexPath;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 25;
}

@end
