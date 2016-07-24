//
//  JTGNomalItem.h
//  JTG
//
//  Created by LTOVE on 15/11/18.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^JTGNormalItemOption)();

@interface JTGNomalItem : NSObject

@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *subtitle;
@property (nonatomic,copy) NSString *price;
@property (nonatomic,copy) NSString *buyCount;
@property (nonatomic,strong) UIImage *image;

@property (nonatomic,copy) JTGNormalItemOption option;

@property (nonatomic,assign) Class descVc;

+(instancetype)itemWithTitle:(NSString *)title image:(UIImage *)image;
@end
