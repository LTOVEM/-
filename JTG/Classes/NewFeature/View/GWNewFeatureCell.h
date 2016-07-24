//
//  GWNewFeatureCell.h
//  sina
//
//  Created by LTOVE on 15/11/7.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GWNewFeatureCell : UICollectionViewCell


@property (nonatomic,strong) UIImage *image;

/**
 *  判断是否是最后一页
 */
- (void)setIndexPath:(NSIndexPath *)indexPath count:(int)count;

@end
