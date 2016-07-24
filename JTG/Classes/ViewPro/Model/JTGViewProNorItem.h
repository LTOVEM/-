//
//  JTGViewProNorItem.h
//  JTG
//
//  Created by LTOVE on 15/11/23.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef  void(^JTGViewProNorItemOption)();
@interface JTGViewProNorItem : NSObject
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subTitle;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic,assign) CGFloat heigh;
@property (nonatomic,copy) JTGViewProNorItemOption option;
@property (nonatomic, assign) Class descVc;
+ (instancetype)itemWithTitle:(NSString *)title;
+ (instancetype)itemWithTitle:(NSString *)title image:(UIImage *)image;
@end
