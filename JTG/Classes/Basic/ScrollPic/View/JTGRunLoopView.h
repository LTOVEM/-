//
//  JTGRunLoopView.h
//  JTG
//
//  Created by LTOVE on 15/11/23.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JTGRunLoopView;
@protocol JTGRunLoopDelegate <NSObject>

- (void)runLoop:(JTGRunLoopView *)scrollView;
- (void)runLoop:(JTGRunLoopView *)scrollView count:(NSInteger)count;

@end


@interface JTGRunLoopView : UICollectionView

@property (nonatomic,weak) id<JTGRunLoopDelegate> delegatel;
@property (nonatomic,strong) NSArray * dataArry;

@end
