//
//  JTGTabBarController.m
//  JTG
//
//  Created by LTOVE on 15/11/18.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGTabBarController.h"

#import "JTGHomeViewController.h"
#import "JTGHotSellViewController.h"
#import "JTGShoppingController.h"
#import "JTGMoreViewController.h"
#import "JTGProfileViewController.h"

#import "JTGNavigationController.h"


#import "GWTabBar.h"

@interface JTGTabBarController ()<GWTabBarDelegate>

@property (nonatomic,strong) NSMutableArray * items;
@property (nonatomic,strong) JTGHomeViewController * home;
@property (nonatomic,strong) JTGMoreViewController * more;
@property (nonatomic,strong) JTGHotSellViewController * hotSell;
@property (nonatomic,strong) JTGProfileViewController * profile;
@property (nonatomic,strong) JTGShoppingController *shopping;

@end

@implementation JTGTabBarController

- (void)tabBar:(GWTabBar *)tabBar didClickButton:(NSUInteger)index
{
//    if (index == 0 && self.self) {
//        <#statements#>
//    }
    
    self.selectedIndex = index;
}

- (NSMutableArray *)items
{
    if (!_items) {
        _items = [NSMutableArray array];
    }
    return _items;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    添加所有子控制器
    [self setUpAllChildController];
    
//    设置tabBar
    [self setUpTabBar];
}
/**
 *  设置tabBar
 */
- (void)setUpTabBar
{
    GWTabBar *tabBar = [[GWTabBar alloc]initWithFrame:self.tabBar.frame];
    
    tabBar.point = CGPointMake(0, 0);
    tabBar.backgroundColor = [UIColor whiteColor];
//    设置代理
    tabBar.delegate = self;
    
    tabBar.itmes = self.items;
    
    [self.tabBar addSubview:tabBar];
}


/**
 *  添加所有控制器
 */
- (void)setUpAllChildController
{
//    首页
    JTGHomeViewController *home = [[JTGHomeViewController alloc]init];
    _home = home;
    
    [self setUpOneViewController:home image:[UIImage imageNamed:@"home_normal"] selectedImage:[UIImage imageNamed:@"home_clicked"] title:nil];
    
//    热卖
    JTGHotSellViewController *hotSell = [[JTGHotSellViewController alloc]init];
    _hotSell = hotSell;
    [self setUpOneViewController:hotSell image:[UIImage imageNamed:@"hot_normal"] selectedImage:[UIImage imageNamed:@"hot_clicked"] title:nil];
//    逛街
//    JTGShoppingController *shopping = [[JTGShoppingController alloc]init];
//    _shopping = shopping;
//    [self setUpOneViewController:shopping image:[UIImage imageNamed:@"biz_normal"] selectedImage:[UIImage imageNamed:@"biz_clicked"] title:nil];
    
//    我
    JTGProfileViewController *profile = [[JTGProfileViewController alloc]init];
    _profile = profile;
    [self setUpOneViewController:profile image:[UIImage imageNamed:@"my_normal"] selectedImage:[UIImage imageNamed:@"my_clicked"] title:nil];
//    更多
    JTGMoreViewController *more = [[JTGMoreViewController alloc]init];
    _more = more;
    [self setUpOneViewController:more image:[UIImage imageNamed:@"more_normal"] selectedImage:[UIImage imageNamed:@"more_clicked"] title:nil];
}
/**
 *  推荐一个子控制器
 */
- (void)setUpOneViewController:(UIViewController *)viewController image:(UIImage *)image selectedImage:(UIImage *)selectedImage title:(NSString *)title
{
    viewController.title = title;
    viewController.tabBarItem.image = image;
    viewController.tabBarItem.selectedImage = selectedImage;
    
    [self.items addObject:viewController.tabBarItem];
    
    JTGNavigationController *nav = [[JTGNavigationController alloc]initWithRootViewController:viewController];
    
    [self addChildViewController:nav];
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
