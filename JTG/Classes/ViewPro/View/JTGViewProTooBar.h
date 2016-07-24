//
//  JTGViewProTooBar.h
//  JTG
//
//  Created by LTOVE on 15/11/23.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JTGViewProDataModel,JTGViewProTooBar;
@protocol JTGViewProTooBarlDelegate <NSObject>

@optional
- (void)JTGViewProTooBar:(JTGViewProTooBar *)JTGViewProTooBar didClickBuyButton:(NSString *)inid goodName:(NSString *)goodName pri:(NSString *)pri;
//-(void)buyBtnClick


@end

@interface JTGViewProTooBar : UIView

@property (nonatomic,strong) JTGViewProDataModel *dataModel;
@property (nonatomic ,weak)id<JTGViewProTooBarlDelegate>delegate;

@end
