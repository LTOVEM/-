//
//  JTGViewController.m
//  JTG
//
//  Created by LTOVE on 16/5/5.
//  Copyright © 2016年 LTOVE. All rights reserved.
//

#import "JTGViewController.h"
#import "JTGDataTooll.h"
#import "JTGHttpTool.h"
#import "JTG.h"
#import "MJExtension.h"


@interface JTGViewController ()<UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *goodName;
@property (weak, nonatomic) IBOutlet UILabel *price;
@property (weak, nonatomic) IBOutlet UILabel *pri;
- (IBAction)subBtnClick:(id)sender;



@end

@implementation JTGViewController



- (void)setGoodname:(NSString *)goodname
{
    _goodname = goodname;
}

- (void)setGoodpri:(NSString *)goodpri
{
    _goodpri = goodpri;
}

- (void)setInid:(NSString *)inid
{
    _inid = inid;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.goodName.text = self.goodname;
    self.pri.text = [NSString stringWithFormat:@"%@.00",self.goodpri];

    self.price.text = self.goodpri;
    
     self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg.png"]];
   }





- (IBAction)subBtnClick:(id)sender {
    
    JTG *param = [JTG param];
    param.inid = self.inid;
    param.buynum = @"1";
    param.fpri = self.goodpri;
    [JTGHttpTool GET:@"http://127.0.0.1/reqData/?action=addOrder" paramenters:param.keyValues success:^(id responseObject) {
        NSLog(@"成功");
//        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"订单提交成功" message:@"您可以继续挑选喜欢的商品哦！" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil];
//        [alert show];
        [self.navigationController popToRootViewControllerAnimated:YES];
    } failure:^(NSError *error) {
        
    }];
}


//-(void)btnClick{
//    cs
//}



@end
