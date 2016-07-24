//
//  JTGViewProHeadView.h
//  JTG
//
//  Created by LTOVE on 15/11/23.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JTGViewProDataModel.h"

@class JTGViewProHeadView;

@protocol JTGViewProHeadViewDelegate <NSObject>

-(void) JTGViewProHeadView:(JTGViewProHeadView *)JTGViewProHeadView buyBtnClick:(NSString *)inid goodName:(NSString *)goodName pri:(NSString *)pri;

@end

@interface JTGViewProHeadView : UIView


@property (nonatomic,strong) JTGViewProDataModel *dataModel;

@property (nonatomic ,weak)id<JTGViewProHeadViewDelegate>delegate;

@end
