//
//  JTGTWOViewController.h
//  JTG
//
//  Created by LTOVE on 15/11/29.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JTGListCateModel,JTGTWOViewController;

@protocol JTGTWOViewCOntrollerDelegate <NSObject>

-(void)JTGTWoViewController:(JTGTWOViewController *)viewController idStr:(NSString *)idStr;

@end

@interface JTGTWOViewController : UITableViewController

@property (nonatomic,copy) NSString *idStr;

@property (nonatomic,strong) JTGListCateModel *model;


@property (nonatomic,weak) id <JTGTWOViewCOntrollerDelegate>delegate;

@property (nonatomic,strong) NSArray *righData;
@end
