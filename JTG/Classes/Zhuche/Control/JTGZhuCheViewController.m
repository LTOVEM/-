//
//  JTGZhuCheViewController.m
//  JTG
//
//  Created by LTOVE on 16/5/5.
//  Copyright © 2016年 LTOVE. All rights reserved.
//

#import "JTGZhuCheViewController.h"
#import "JTGHttpTool.h"

#import "JTGZhuCheModel.h"
#import "MJExtension.h"
#import "JTGLoginViewViewController.h"
#import "JTGmeSsageViewController.h"
@interface JTGZhuCheViewController ()<UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *enterPhone;
@property (weak, nonatomic) IBOutlet UITextField *enterPwd;
@property (weak, nonatomic) IBOutlet UITextField *renterPwd;
- (IBAction)submit:(id)sender;

@end

@implementation JTGZhuCheViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
     self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg.png"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)submit:(id)sender {
    
    NSString * string = [_enterPhone.text stringByTrimmingCharactersInSet:[NSCharacterSet decimalDigitCharacterSet]];
    
    if (_enterPhone.text.length <=0 || _enterPwd.text.length <= 0 ||_renterPwd.text.length <= 0) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"注册失败" message:@"信息填写不完整" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles: nil];
        [alert show];
    }else if (string.length > 0){
        
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"注册失败" message:@"手机号必须为数字" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles: nil];
        [alert show];
    }else if (_enterPhone.text.length != 11) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"注册失败" message:@"手机号长度错误" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles: nil];
        [alert show];
    }else if (![_enterPwd.text isEqualToString:_renterPwd.text]){
        
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"注册失败" message:@"两次输入的密码不一致" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles: nil];
        [alert show];
    }else if (_enterPwd.text.length < 6){
        
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"注册失败" message:@"密码长度不能少于6位" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles: nil];
        [alert show];
    }else{
        
        NSString *account = [_enterPhone.text substringToIndex:10];
        NSLog(@"%@",account);
        
        JTGZhuCheModel *param = [JTGZhuCheModel param];
        param.uid = account;
        param.pwd = _enterPwd.text;
        param.uname = @"新用户";
        param.tid = @"109";
        param.phone = _enterPhone.text;
        [JTGHttpTool GET:@"http://127.0.0.1/reqData/?action=zc" paramenters:param.keyValues success:^(id responseObject) {
           
            [self.navigationController popToRootViewControllerAnimated:YES];
        } failure:^(NSError *error) {
            NSLog(@"不成功");
            NSLog(@"%@",error);
        }];
    }
    
    
}

@end
