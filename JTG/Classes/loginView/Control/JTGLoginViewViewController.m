//
//  JTGLoginViewViewController.m
//  JTG
//
//  Created by LTOVE on 16/5/6.
//  Copyright © 2016年 LTOVE. All rights reserved.
//

#import "JTGLoginViewViewController.h"
#import "JTGZhuCheViewController.h"
#import "JTGmeSsageViewController.h"

@interface JTGLoginViewViewController ()
- (IBAction)login:(id)sender;
- (IBAction)zhuche:(id)sender;

@end

@implementation JTGLoginViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg.png"]];
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

- (IBAction)login:(id)sender {
    
    JTGmeSsageViewController *view = [[JTGmeSsageViewController alloc]init];
    self.navigationItem.backBarButtonItem.title = @"返回";
    [self.navigationController pushViewController:view animated:YES];
}

- (IBAction)zhuche:(id)sender {
    
    JTGZhuCheViewController *view = [[JTGZhuCheViewController alloc]init];
    [self.navigationController pushViewController:view animated:YES];
}
//
//- (void)viewWillAppear:(BOOL)animated
//{
//    
//    NSString *uid = [[NSUserDefaults standardUserDefaults]objectForKey:accoubt];
//    if (!uid) {
//        JTGmeSsageViewController *view = [[JTGmeSsageViewController alloc]init];
//        self.navigationItem.backBarButtonItem.title = @"返回";
//        [self.navigationController pushViewController:view animated:YES];
//    }
//}
@end
