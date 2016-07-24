//
//  JTGCover.h
//  JTG
//
//  Created by LTOVE on 15/11/27.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JTGCover;
@protocol JTGCoverDelegate <NSObject>

-(void)coverDidClickCover:(JTGCover *)cover;

@end
@interface JTGCover : UIView


/**
 *  显示蒙版
 */
+ (instancetype)show;

- (void)hiden;

//设置蒙版
@property (nonatomic,assign) BOOL dimBackGround;

@property (nonatomic,weak) id<JTGCoverDelegate>delegate;

@end
