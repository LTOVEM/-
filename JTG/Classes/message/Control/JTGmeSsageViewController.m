//
//  JTGmeSsageViewController.m
//  JTG
//
//  Created by LTOVE on 16/5/6.
//  Copyright © 2016年 LTOVE. All rights reserved.
//

#import "JTGmeSsageViewController.h"
#import "JTGLoginParam.h"
#import "JTGHttpTool.h"
#import "MJExtension.h"

#import "JTGloginResult.h"


@interface JTGmeSsageViewController ()<UIAlertViewDelegate>
- (IBAction)loginBtn:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *uname;
@property (weak, nonatomic) IBOutlet UITextField *pwd;

@end

@implementation JTGmeSsageViewController

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

- (IBAction)loginBtn:(id)sender {
    
    JTGLoginParam *param = [[JTGLoginParam alloc]init];
    if (_uname.text.length != 11) {
        
    }else{
        NSString *uid = [_uname.text substringToIndex:10];
        param.uid = uid;
//        NSLog(@"%@",param.uid);
        param.pwd = _pwd.text;
        
        [JTGHttpTool GET:@"http://127.0.0.1/reqData/?action=login" paramenters:param.keyValues success:^(id responseObject) {
            
//
            
            
            JTGloginResult *result = [JTGloginResult objectWithKeyValues:responseObject];
            NSLog(@"%@",result.info);
            
            if ([result.info isEqualToString:@"1"]) {
                [[NSUserDefaults standardUserDefaults]setObject:uid forKey:accoubt];
                
                
                [self.navigationController popToRootViewControllerAnimated:YES];
            }else{
                UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"登录失败" message:@"账号或密码错误！" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil];
                [alert show];
            }
        } failure:^(NSError *error) {
            
        }];
    }
    
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    [self popToRootControl];
}
-(void)popToRootControl
{

    
}
@end
