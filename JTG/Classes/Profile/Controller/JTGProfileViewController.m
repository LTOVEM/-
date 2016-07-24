//
//  JTGProfileViewController.m
//  JTG
//
//  Created by LTOVE on 15/11/18.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGProfileViewController.h"
#import "JTGDataTooll.h"

#import "JTGGroupItem.h"

#import "JTGPriFileFirstCell.h"
#import "JTGNomalItem.h"
#import "JTGProfileModel.h"
#import "JTGArrowItem.h"
#import "JTGProfileTwoCell.h"

#import "JTGProfileConNumListModel.h"

#import "JTGAccountMgrViewController.h"

#import "JTGselAddViewController.h"
#import "JTGUpNameViewController.h"
#import "JTGLoginViewViewController.h"
#import "JTGNavigationController.h"
#import "JTGTabBarController.h"

#import "JTGmeSsageViewController.h"

@interface JTGProfileViewController ()<UIAlertViewDelegate>

@property (nonatomic,copy) NSString * userName;
@property (nonatomic,strong) NSMutableArray * counts;
- (IBAction)upAd:(id)sender;
- (IBAction)upUname:(id)sender;


- (IBAction)loginOut:(id)sender;




@end

@implementation JTGProfileViewController

- (NSMutableArray *)counts
{
    if (!_counts) {
        _counts = [NSMutableArray array];
    }
    return _counts;
}

- (IBAction)upAd:(id)sender {
    
    JTGselAddViewController *view = [[JTGselAddViewController alloc]init];
    [self.navigationController pushViewController:view animated:YES];
}

- (IBAction)upUname:(id)sender {
    
    JTGUpNameViewController *view = [[JTGUpNameViewController alloc]init];
    [self.navigationController pushViewController:view animated:YES];
}



- (IBAction)loginOut:(id)sender {
    
    
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:accoubt];
//    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"操作提醒" message:@"您已退出当前账户！" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
//    [alert show];
    
    JTGLoginViewViewController *view = [[JTGLoginViewViewController alloc]init];
    
    [self.navigationController pushViewController:view animated:YES];
    
}



- (void)viewWillAppear:(BOOL)animated
{
    [self loadData];
    [self.navigationItem setTitle:self.userName];
    NSString *uid = [[NSUserDefaults standardUserDefaults]objectForKey:accoubt];
    if (!uid) {
        JTGLoginViewViewController *view = [[JTGLoginViewViewController alloc]init];
        self.navigationItem.backBarButtonItem.title = @"返回";
        [self.navigationController pushViewController:view animated:YES];
    }
}




- (void)loadData
{
    
    [JTGDataTooll loadProfileWithSuccess:^(NSArray *data) {
        JTGProfileModel *model = [data firstObject];
        NSString *userName = model.unm;
        //            NSLog(@"%@",userName);
        _userName = userName;
        //            [self setUpGroup0Data];
        
    } faiilure:^(NSError *error) {
        NSLog(@"%@",error);
    }];
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.view.backgroundColor = [UIColor whiteColor];
//    [self setUpGroup0];
//    [self.navigationItem setTitle:self.userName];
     self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg.png"]];

    
    
    cs
}

@end
