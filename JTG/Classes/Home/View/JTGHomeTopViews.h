//
//  JTGHomeTopViews.h
//  JTG
//
//  Created by LTOVE on 15/11/26.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JTGHomeTopViews;

@protocol JTGHomeDeleGate <NSObject>

//-(void)homeAd:(JTGHomeTopViews *)homeTopView LinkId:(NSString *)likId;
-(void)homeAd:(JTGHomeTopViews *)homeTopView ListId:(NSString *)listId title:(NSString *)title images:(NSString *)images;
/**
 *   点击更多
 */
-(void)homeAd:(JTGHomeTopViews *)homeTopView;
@end

@interface JTGHomeTopViews : UIView

/**
 *  顶部滚涂
 */
@property (nonatomic,strong) NSArray *scrowArray;
/**
 *  中间按钮   无需转化
 */
@property (nonatomic,strong) NSArray *dateArray;

@property (nonatomic,strong) NSArray *AdArray;

@property (nonatomic,weak) id <JTGHomeDeleGate>delegate;
@end
