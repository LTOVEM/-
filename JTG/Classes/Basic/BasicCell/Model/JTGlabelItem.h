//
//  JTGlabelItem.h
//  JTG
//
//  Created by LTOVE on 15/11/21.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGNomalItem.h"

@interface JTGlabelItem : JTGNomalItem

@property (nonatomic,copy) NSString *text;


+(instancetype)itemWithImage:(UIImage *)image LblText:(NSString *)text title:(NSString *)title;
@end
