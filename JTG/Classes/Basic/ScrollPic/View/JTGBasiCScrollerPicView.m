//
//  JTGBasiCScrollerPicView.m
//  JTG
//
//  Created by LTOVE on 15/11/25.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGBasiCScrollerPicView.h"
#import "JTGRunLoopView.h"



@interface JTGBasiCScrollerPicView ()<JTGRunLoopDelegate>

@property (nonatomic,weak) UIPageControl * pageControl;
@property (nonatomic,weak) JTGRunLoopView * view;

@end
@implementation JTGBasiCScrollerPicView


- (instancetype)init
{
    if (self = [super init]) {
        self.width = screenW;
        JTGRunLoopView *view = [[JTGRunLoopView alloc]init];
        _view = view;
        view.bounces = NO;
        view.showsHorizontalScrollIndicator = NO;
        view.pagingEnabled = YES;
        //        view.contentOffset = CGPointMake(50, 40);
        view.delegatel = self;
        [self addSubview:view];
        
        //        [self SetUpPageControl];
    }
    
    
    return self;
}
- (void)setArray:(NSArray *)array
{
    _array = array;
    self.view.dataArry = array;
}
- (void)SetUpPageControl:(NSInteger)count
{
    UIPageControl *page = [[UIPageControl alloc] init];
    
    page.center = CGPointMake(screenW * 0.5, self.view.height * 0.85);
    page.numberOfPages = count;
    page.currentPageIndicatorTintColor = [UIColor greenColor];
    page.pageIndicatorTintColor = [UIColor whiteColor];
    _pageControl = page;
    
    UIView *cover = [[UIView alloc]init];
    cover.backgroundColor = GWColor(0, 0, 0, 0.8);
    //    cover.x = page.center.x;
    //    cover.y = page.center.y;
    cover.center = CGPointMake(screenW * 0.49, self.view.height * 0.85);
    NSLog(@"%f",cover.center.x);
    
    cover.size = CGSizeMake(15 * count, 15);
    //    page.size = cover.size;
    page.width = cover.width * 0.8;
    page.height = cover.height * 0.8;
    [self addSubview:cover];
    [self addSubview:page];
    
}

- (void)runLoop:(JTGRunLoopView *)scrollView
{
    NSInteger page = scrollView.contentOffset.x / scrollView.width + 0.5;
    
    _pageControl.currentPage = page;
}

- (void)runLoop:(JTGRunLoopView *)scrollView count:(NSInteger)count
{
    [self SetUpPageControl:count];
}


@end
