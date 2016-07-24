//
//  JTGRunLoopCell.m
//  JTG
//
//  Created by LTOVE on 15/11/25.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGRunLoopCell.h"

#import "UIImageView+WebCache.h"
#import "JTGRunLoopList.h"

static NSString *const resueIdentifier = @"cell";
static UICollectionView *_collectionView = nil;
@interface JTGRunLoopCell ()
@property (nonatomic,weak) UIImageView * imageView;
@end
@implementation JTGRunLoopCell

- (UIImageView *)imageView
{
    if (!_imageView) {
        UIImageView *imageView = [[UIImageView alloc]initWithFrame:self.bounds];
        _imageView = imageView;
        [self addSubview:imageView];
    }
    return _imageView;
}
+(instancetype)cellWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath
{
//    注册if
    if (_collectionView == nil) {
        _collectionView = collectionView;
        [collectionView registerClass:[JTGRunLoopCell class] forCellWithReuseIdentifier:resueIdentifier];
    }
    return [collectionView dequeueReusableCellWithReuseIdentifier:resueIdentifier forIndexPath:indexPath];
}


- (void)setImageUrlStr:(NSString *)imageUrlStr
{
//    NSLog(@"%@",imageUrlStr);
    [self.imageView sd_setImageWithURL:[NSURL URLWithString:imageUrlStr]];
}

@end
