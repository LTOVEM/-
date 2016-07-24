//
//  JTGNavigationController.m
//  JTG
//
//  Created by LTOVE on 15/11/18.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGNavigationController.h"
#import "GWTabBar.h"
#import "UIBarButtonItem+Item.h"

@interface JTGNavigationController ()<UINavigationControllerDelegate>

@property (nonatomic,strong) id  popDelegate;

@end

@implementation JTGNavigationController

+ (void)initialize
{
    UIBarButtonItem *item = [UIBarButtonItem appearanceWhenContainedIn:self, nil];
    
    NSMutableDictionary *titleAttr = [NSMutableDictionary dictionary];
    titleAttr[NSForegroundColorAttributeName] = [UIColor whiteColor];
    [item setTitleTextAttributes:titleAttr forState:UIControlStateNormal];
//    [[UINavigationBar appearance] setBackgroundColor:[UIColor redColor]];
    [[UINavigationBar appearance] setBackgroundImage:[UIImage imageNamed:@"navBatBackground"] forBarMetrics:UIBarMetricsDefault];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _popDelegate = self.interactivePopGestureRecognizer.delegate;
    self.delegate = self;
//    [self.navigationBar setBackgroundColor:[UIColor orangeColor]];
//    self.navigationBar.backgroundColor = [UIColor orangeColor];
    
//    [self.navigationBar removeFromSuperview];
    
    UIView *viewl = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.width, 64)];
    viewl.backgroundColor = [UIColor orangeColor];
//    [self.view addSubview:viewl];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    UITabBarController *tabBarVc = (UITabBarController *) [UIApplication sharedApplication].keyWindow.rootViewController;
    for (UIView *tabBarButton in tabBarVc.tabBar.subviews) {
        if (![tabBarButton isKindOfClass:[GWTabBar class]]) {
            [tabBarButton removeFromSuperview];
        }
    }
}

@end
