//
//  JTGListMidiCeollectionView.h
//  JTG
//
//  Created by LTOVE on 15/11/25.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JTGListMidiCeollectionView;

@protocol JTGListMidCellViewDelegate <NSObject>

- (void)ListMidWith:(JTGListMidiCeollectionView *)ListMid idstr:(NSString *)idstr title:(NSString *)title  images:(NSString *)images;
- (void)ListMidWith:(JTGListMidiCeollectionView *)ListMid;

@end

@interface JTGListMidiCeollectionView : UICollectionView



@property (nonatomic,strong) NSArray *dataArray;

//@property (nonatomic,strong) NSArray *AdArray;


@property (nonatomic,weak) id <JTGListMidCellViewDelegate> delegatel;

@end
