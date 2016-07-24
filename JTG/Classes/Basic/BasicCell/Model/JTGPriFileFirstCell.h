//
//  JTGPriFileFirstCell.h
//  JTG
//
//  Created by LTOVE on 15/11/21.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGNomalItem.h"

@interface JTGPriFileFirstCell : JTGNomalItem

/**
 *  用户昵称
 */
@property (nonatomic,copy) NSString *textLbl;

+ (instancetype)itemWithTitle:(NSString *)title;

@end
