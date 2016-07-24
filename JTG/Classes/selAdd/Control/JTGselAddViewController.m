//
//  JTGselAddViewController.m
//  JTG
//
//  Created by LTOVE on 16/5/6.
//  Copyright © 2016年 LTOVE. All rights reserved.
//sqlAd.png

#import "JTGselAddViewController.h"

#import "JTGHttpTool.h"
#import "JTGsqlParam.h"
#import "MJExtension.h"
@interface JTGselAddViewController ()
- (IBAction)sqlAdBtnClick:(id)sender;

@end

@implementation JTGselAddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"sqlAd.png"]];
}

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

- (IBAction)sqlAdBtnClick:(UIButton *)sender {
    
    JTGsqlParam *param = [JTGsqlParam param];
    param.tid = [NSString stringWithFormat:@"%ld",sender.tag];
    [JTGHttpTool GET:@"http://127.0.0.1/reqData/?action=upad" paramenters:param.keyValues success:^(id responseObject) {
        
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"地址更新成功" message:@"赶快去购物吧！" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
        [alert show];
        
    } failure:^(NSError *error) {
        
    }];
    
    
    
}
@end
