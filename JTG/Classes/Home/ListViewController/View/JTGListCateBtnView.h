//
//  JTGListCateBtnView.h
//  JTG
//
//  Created by LTOVE on 15/11/27.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JTGListCateModel,JTGListCateBtnView;
#import "JTGListBtn.h"
@protocol JTGListCateBtnViewDelegate <NSObject>

-(void)listCateBtnView:(JTGListCateBtnView *)listCateBtnView btnClick:(UIButton *)btn;

@end

@interface JTGListCateBtnView : UIView

/**
 *  标题按钮
 */
@property (nonatomic,weak) JTGListBtn * btnTitle;

/**
 *  排序按钮
 */
@property (nonatomic,weak) UIButton * btnOrder;

@property (nonatomic,strong) JTGListCateModel *model;

@property (nonatomic,weak) id <JTGListCateBtnViewDelegate> delegate;

@end
