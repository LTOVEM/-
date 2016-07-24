//
//  JTGUpNameViewController.m
//  JTG
//
//  Created by LTOVE on 16/5/6.
//  Copyright © 2016年 LTOVE. All rights reserved.
//

#import "JTGUpNameViewController.h"
#import "JTGUpNameParam.h"
#import "JTGHttpTool.h"
#import "MJExtension.h"
@interface JTGUpNameViewController ()
@property (weak, nonatomic) IBOutlet UITextField *uname;
@property (weak, nonatomic) IBOutlet UITextField *pwd;
- (IBAction)submitBtn:(id)sender;

@end

@implementation JTGUpNameViewController

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

- (IBAction)submitBtn:(id)sender {
    
    JTGUpNameParam *param = [JTGUpNameParam param];
    param.uname = _uname.text;
    param.pwd = _pwd.text;
    NSLog(@"%@",param.uid);
    [JTGHttpTool GET:@"http://127.0.0.1/reqData/?action=upinfo" paramenters:param.keyValues success:^(id responseObject) {
        NSLog(@"%@",responseObject);
        [self.navigationController popViewControllerAnimated:YES];
        
    } failure:^(NSError *error) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"用户信息更新成功" message:@"赶快去购物吧！" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
        [alert show];
    }];
    
}
@end
