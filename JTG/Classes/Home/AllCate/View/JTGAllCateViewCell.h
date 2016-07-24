//
//  JTGAllCateViewCell.h
//  JTG
//
//  Created by LTOVE on 15/11/27.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JTGAllCateViewCell : UICollectionViewCell

/**
 *  单元格文字内容
 */
@property (nonatomic,copy) NSString *text;

+ (instancetype)cellWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath;

@end
