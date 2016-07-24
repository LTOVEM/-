//
//  JTGAllCateViewCell.m
//  JTG
//
//  Created by LTOVE on 15/11/27.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGAllCateViewCell.h"

@interface JTGAllCateViewCell ()

@property (nonatomic,weak) UILabel * lblText;

@end

static NSString * const reuseIdentifier = @"Cell";
static UICollectionView *_collectionView;
@implementation JTGAllCateViewCell

//- (UILabel *)lblText
//{
//    if (!_lblText) {
//        UILabel *lbltext = [[UILabel alloc]initWithFrame:self.bounds];
//        _lblText = lbltext;
//        lbltext.font = JTGViewProTextViewFont;
//        lbltext.textAlignment = NSTextAlignmentCenter;
//        [self addSubview:lbltext];
//    }
//    return _lblText;
//}

- (instancetype)init
{
    if (self = [super init]) {
        UILabel *lbltext = [[UILabel alloc]initWithFrame:self.bounds];
        _lblText = lbltext;
          NSLog(@"%@",NSStringFromCGSize(self.lblText.size));
        lbltext.font = JTGViewProTextViewFont;
        lbltext.textAlignment = NSTextAlignmentCenter;
        [self addSubview:lbltext];
        
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        UILabel *lbltext = [[UILabel alloc]initWithFrame:self.bounds];
        _lblText = lbltext;
        NSLog(@"%@",NSStringFromCGSize(self.lblText.size));
        lbltext.font = JTGViewProTextViewFont;
        lbltext.textAlignment = NSTextAlignmentCenter;
        [self addSubview:lbltext];
    }
    return self;
}

+ (instancetype)cellWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath
{
    if (!_collectionView) {
        _collectionView = collectionView;
        [collectionView registerClass:[JTGAllCateViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    }
    return [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
}


- (void)setText:(NSString *)text
{
    _text = text;
    self.lblText.text = text;
    self.lblText.backgroundColor = [UIColor redColor];
//    NSLog(@"%@",NSStringFromCGSize(self.lblText.size));
}

@end
