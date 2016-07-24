//
//  JTGHomeListViewController.m
//  JTG
//
//  Created by LTOVE on 15/11/26.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGHomeListViewController.h"

#import "JTGListCateBtnView.h"

#import "JTGCover.h"
#import "JTGPopMenu.h"
#import "JTGOneViewController.h"

#import "MJExtension.h"

#import "JTGDataTooll.h"

#import "JTGListCateModel.h"
#import "JTGTWOViewController.h"

#import "MJRefresh.h"

#import "JTGOrderViewController.h"
@interface JTGHomeListViewController ()<JTGListCateBtnViewDelegate,JTGCoverDelegate,JTGOneViewControllerDelegate,JTGTWOViewCOntrollerDelegate>

@property (nonatomic,weak) JTGListCateBtnView * vie;

@property (nonatomic,weak) JTGCover * coverView;

@property (nonatomic,weak) UIButton * leftbtn;
@property (nonatomic,strong) JTGOrderViewController * odr;
@property (nonatomic,strong) JTGOneViewController * one;
@property (nonatomic,strong) JTGTWOViewController * two;
@property (nonatomic,strong) NSArray * leftListModel;

@property (nonatomic,copy) NSString * idStrs;

@end

@implementation JTGHomeListViewController

- (void)JTGTWoViewController:(JTGTWOViewController *)viewController idStr:(NSString *)idStr
{
//    [self loadNewDataWithIdStr:idStr];
    [self leftBtnClick:self.leftbtn];
    cs
    self.type = @"3";
    self.idStr = idStr;
    self.pgnm = @"0";
//    [self loadNewData];
    [self.tableView headerBeginRefreshing];
    NSLog(@"%@-----%@",self.type,self.idStr);
//    NSLog(@"",);
    
}

- (void)loadNewDataWithIdStr:(NSString *)idStr
{
    [JTGDataTooll loadListGateWithType:@"3" id:idStr success:^(NSArray *items, NSArray *Aditems) {
        self.goodlist = items;
//        [self.tableView reloadData];
    } failure:^(NSError *error) {
        
    }];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.idStrs = self.idStr;
    self.tableView.contentInset = UIEdgeInsetsMake(30, 0, 0, 0);
}



- (void)OneView:(JTGOneViewController *)oneVc idStr:(NSString *)idStr
{
    [self loadRighData:idStr];
    self.idStrs = idStr;
}

- (JTGOrderViewController *)odr
{
    if (!_odr) {
        _odr = [[JTGOrderViewController alloc]init];
//        _odr.view.backgroundColor = [UIColor whiteColor];
//        _odr.tableView.backgroundColor = [UIColor blackColor];
    }
    return _odr;
}

- (JTGOneViewController *)one
{
    if (!_one) {
        JTGOneViewController *one = [[JTGOneViewController alloc]init];
//        one.view.frame = CGRectMake(10, 10, 100, 500);
        _one = one;
        one.delegate = self;
    }
    return _one;
}

- (JTGTWOViewController *)two
{
    if (!_two) {
        JTGTWOViewController *two = [[JTGTWOViewController alloc]init];
        _two = two;
        two.delegate = self;
    }
    return _two;
}

- (void)coverDidClickCover:(JTGCover *)cover
{
    _vie.btnTitle.selected = NO;
    [JTGPopMenu hiden];
    
}

- (void)listCateBtnView:(JTGListCateBtnView *)listCateBtnView btnClick:(UIButton *)btn
{

    if (btn.tag == 0) {
        [self leftBtnClick:btn];
        _leftbtn = btn;
    }else{
        [self rightBtnClick:btn];
        
    }
}

- (void)rightBtnClick:(UIButton *)btn
{
    if (btn.selected == YES) {
        
        [JTGPopMenu hiden];
        [self.coverView hiden];
        btn.selected = NO;
    }else{
//        [self loadLeftData];
        btn.selected = YES;
        
        JTGCover *cover = [JTGCover show];
        _coverView = cover;
        cover.delegate = self;
        
        CGFloat w = screenW/2;
        CGFloat x = w;
        CGFloat y = CGRectGetMaxY(self.vie.btnTitle.frame);
        CGFloat h = 30 * 4;
        cover.dimBackGround = btn.selected;
        JTGPopMenu *menu = [JTGPopMenu showInRect:CGRectMake(x, 94, w, h)];
        menu.backgroundColor = GWColor(20, 20, 20, 1);
        self.odr.view.size = menu.size;
        
//        self.one.Arraymodel = self.leftListModel;
//        self.one.idStr = self.idStr;
        menu.contentView = self.odr.view;
        
    }

}

-(void)leftBtnClick:(UIButton *)btn
{
    if (btn.selected == YES) {
        
        [JTGPopMenu hiden];
//        [self.coverView hiden];
        [self.coverView removeFromSuperview];
        btn.selected = NO;
    }else{
        [self loadLeftData];
        [self loadRighData:self.idStrs];
        btn.selected = YES;
      
        
        CGFloat w = screenW/2;
        CGFloat h = 30 * 10;
       
        [self addPopMenu:w h:h btn:btn];
        [self AddRightPopMenuBtn:btn];
    }

}

- (void)AddRightPopMenuBtn:(UIButton *)btn
{
    
    
        CGFloat w = screenW/2;
    CGFloat x = w;
    CGFloat y = CGRectGetMaxY(self.vie.btnTitle.frame);
        CGFloat h = 30 * 10;
   
    JTGPopMenu *menu = [JTGPopMenu showInRect:CGRectMake(x, 94, w, h)];
    menu.backgroundColor = [UIColor whiteColor];
//    self.one.view.size = menu.size;
    
//    self.one.Arraymodel = self.leftListModel;
//    self.one.idStr = self.idStr;
    menu.contentView = self.two.view;
}

- (void)addPopMenu:(CGFloat)w h:(CGFloat)h btn:(UIButton *)btn
{
    JTGCover *cover = [JTGCover show];
    _coverView = cover;
    cover.delegate = self;
//    CGFloat w = screenW/2;
    CGFloat x = 0;
    CGFloat y = CGRectGetMaxY(self.vie.btnTitle.frame);
//    CGFloat h = 30 * 10;
    cover.dimBackGround = btn.selected;
    JTGPopMenu *menu = [JTGPopMenu showInRect:CGRectMake(x, 94, w, h)];
    menu.backgroundColor = GWColor(51, 51, 51, 1);
    self.one.view.size = menu.size;
    
//    self.one.Arraymodel = self.leftListModel;
//    self.one.idStr = self.idStr;
    menu.contentView = self.one.view;
}
- (instancetype)initWithStyle:(UITableViewStyle)style
{
    if (self = [super initWithStyle:style]) {
//         [self setUpAllSubviews];
        [self loadLeftData];
    }
    return self;
}

- (void)loadLeftData
{
    [JTGDataTooll loadListGateWithType:@"4" id:nil success:^(NSArray *items, NSArray *Aditems) {
        self.leftListModel = items;
    } failure:^(NSError *error) {
        
    }];
}

- (void)loadRighData:(NSString *)idstr
{
    [JTGDataTooll loadListGateWithType:@"3" id:idstr success:^(NSArray *items, NSArray *Aditems) {
        self.two.righData = items;
    } failure:^(NSError *error) {
        
    }];
}


- (void)setUpAllSubviews
{
    JTGListCateBtnView * vie = [[JTGListCateBtnView alloc]init];
    _vie = vie;
    vie.delegate = self;
    vie.size = CGSizeMake(screenW, 30);
    vie.backgroundColor = [UIColor lightGrayColor];
    //        self.tableView.tableHeaderView = vie;
    vie.point = CGPointMake(0, 64);
    [[UIApplication sharedApplication].keyWindow addSubview:vie];
    
}


- (void)setModel:(JTGListCateModel *)model
{
    _model = model;
    self.vie.model = model;
    self.idStr = model.id;
    
    
}



- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    
}

- (void)dealloc
{
    cs
}

- (void)viewWillDisappear:(BOOL)animated
{
    cs
//    [self.vie removeFromSuperview];
    for (UIView *view in [UIApplication sharedApplication].keyWindow.subviews) {
        if ([view isKindOfClass:[JTGListCateBtnView class]]  || [view isKindOfClass:[JTGCover class]] || [view isKindOfClass:[JTGPopMenu class]]) {
            [view removeFromSuperview];
        }
        
    }
   
}

- (void)viewWillAppear:(BOOL)animated
{
    [self setUpAllSubviews];
    self.vie.model = self.model;
   
}


@end
