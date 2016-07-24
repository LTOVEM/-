//
//  JTGAccountMgrViewController.m
//  JTG
//
//  Created by LTOVE on 15/11/22.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGAccountMgrViewController.h"

#import "JTGGroupItem.h"
#import "JTGPriFileFirstCell.h"
#import "JTGArrowItem.h"

#import "JTGxiuGaiViewController.h"

@interface JTGAccountMgrViewController ()

@end

@implementation JTGAccountMgrViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.view.backgroundColor = [UIColor redColor];
    
    [self.navigationItem setTitle:@"账号管理"];
    
    [self setUpGroup];
}

- (void)setUpGroup
{
    JTGPriFileFirstCell *first = [JTGPriFileFirstCell itemWithTitle:@"修改个人信息"];
    
//    个人设置
//    JTGArrowItem *proSetting = [JTGArrowItem itemWithTitle:@"个人设置" image:[UIImage imageNamed:@"address_info"]];
////    修改密码
//    JTGArrowItem *changePwd = [JTGArrowItem itemWithTitle:@"修改密码" image:[UIImage imageNamed:@"edit_password"]];
    
    JTGGroupItem *group = [[JTGGroupItem alloc]init];
    group.items = @[first];
    [self.groups addObject:group];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        return 80;
    }
    
    return 40;
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%ld",(long)indexPath.row);
    JTGxiuGaiViewController *view = [[JTGxiuGaiViewController alloc]init];
    [self.navigationController pushViewController:view animated:YES];
}

-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        cell.accessoryView.hidden = YES;
    }
    
    if ([cell respondsToSelector:@selector(setSeparatorInset:)])
    {
        [cell setSeparatorInset:UIEdgeInsetsZero];
    }
    if ([cell respondsToSelector:@selector(setPreservesSuperviewLayoutMargins:)])
    {
        [cell setPreservesSuperviewLayoutMargins:NO];
    }
    if ([cell respondsToSelector:@selector(setLayoutMargins:)])
    {
        [cell setLayoutMargins:UIEdgeInsetsZero];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
