//
//  JTGMoreViewController.m
//  JTG
//
//  Created by LTOVE on 15/11/18.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGMoreViewController.h"
#import "JTGArrowItem.h"
#import "JTGGroupItem.h"
#import "JTGlabelItem.h"

@interface JTGMoreViewController ()

@end

@implementation JTGMoreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
//    [self setUpGroup];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg.png"]];
    [self.navigationItem setTitle:@"关于我们"];
}


//- (void)setUpGroup
//{
//    JTGArrowItem *ly = [JTGArrowItem itemWithTitle:@"我要留言" image:[UIImage imageNamed:@"more_cell_1"]];
//    JTGArrowItem *lxWm = [JTGArrowItem itemWithTitle:@"联系我们" image:[UIImage imageNamed:@"more_cell_2"]];
//    JTGlabelItem *verson = [JTGlabelItem itemWithImage:[UIImage imageNamed:@"more_cell_3"] LblText:@"当前版本 V2.2" title:@"版本更新"];
//    JTGGroupItem *groupItem = [[JTGGroupItem alloc]init];
//    groupItem.items = @[ly,lxWm,verson];
//    
//    [self.groups addObject:groupItem];
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
