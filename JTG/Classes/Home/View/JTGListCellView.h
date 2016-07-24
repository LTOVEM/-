//
//  JTGListCellView.h
//  JTG
//
//  Created by LTOVE on 15/11/25.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JTGListCateModel;
@interface JTGListCellView : UIView

///**
// *  标题
// */
//@property (nonatomic,copy) NSString *title;
///**
// *  图片
// */
//@property (nonatomic,weak) UIImage *image;
@property (nonatomic,strong) JTGListCateModel * listModel;

@end
