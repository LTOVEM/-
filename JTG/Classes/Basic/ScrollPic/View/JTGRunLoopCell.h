//
//  JTGRunLoopCell.h
//  JTG
//
//  Created by LTOVE on 15/11/25.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <UIKit/UIKit.h>
//@class JTGRunLoopList;
@interface JTGRunLoopCell : UICollectionViewCell

@property (nonatomic,strong) NSString *imageUrlStr;

+ (instancetype)cellWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath;

@end
