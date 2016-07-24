//
//  JTGDataTooll.m
//  JTG
//
//  Created by LTOVE on 15/11/19.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGDataTooll.h"

#import "JTGHttpTool.h"
#import "MJExtension.h"

//#import "NSDictionary+Log.h"
//#import "NSArray+Log.h"

#import "JTGHomeCellDataParam.h"
#import "JTGHomeDataCellResult.h"
#import "JTGHomeData.h"
#import "JTGHomeList.h"

#import "JTGRunLoopPicParam.h"
#import "JTGRunLoopPicResult.h"
#import "JTGRunLoopData.h"
#import "JTGRunLoopList.h"

#import "JTGListGateParam.h"
#import "JTGListGateResult.h"
#import "JTGListGateData.h"
#import "JTGListCateModel.h"

#import "JTGAllCateParam.h"
#import "JTGAllCateResult.h"
#import "JTGAllCateData.h"
#import "JTGParentItemModel.h"
#import "JTGTypeIyemModel.h"

#import "JTGOrderProParam.h"
#import "JTGOrderProResult.h"
#import "JTGOrderProDataModel.h"
#import "JTGOrderProItemModel.h"

#import "JTGViewProParam.h"
#import "JTGViewProResult.h"
#import "JTGViewProDataModel.h"

#import "JTGSearchParam.h"
#import "JTGSearchResult.h"
#import "JTGSearchDataModel.h"
#import "JTGSearchModel.h"

#import "JTGLanchAdParam.h"
#import "JTGLanchAdResult.h"
#import "JTGLaunchAdModel.h"

#import "JTGLanchHomeAdParam.h"
#import "JTGLanchHomeAdResult.h"
#import "JTGLanchHomeAdModel.h"

#import "JTGListOrdParam.h"
#import "JTGListOrdResult.h"
#import "JTGlistOrdDataModel.h"
#import "JTGListOrdModel.h"

#import "JTGViewOrdParam.h"
#import "JTGViewOrdResult.h"
#import "JTGViewOrdModel.h"

#import "JTGProfileParam.h"
#import "JTGProfileResult.h"
#import "JTGProfileModel.h"

#import "JTGAddProfileParam.h"
#import "JTGAddProfileModel.h"

#import "JTGListCollectParam.h"
#import "JTGListCollectResult.h"
#import "JTGListCollectDataModel.h"
#import "JTGListCollectModel.h"

#import "JTGAddCollectParam.h"
#import "JTGAddCollectModel.h"

#import "JTGDelCollectParam.h"
#import "JTGDelCollectModel.h"

#import "JTGProfileCountListParam.h"
#import "JTGProfileCountListResult.h"
#import "JTGProfileConNumListModel.h"

#import "JTGViewProCellFran.h"
#import "JTGListCateAdModel.h"

#import "JTGAccount.h"
@implementation JTGDataTooll


//请求个人昵称
+ (void)loadProfileWithSuccess:(void (^)(NSArray *))successs faiilure:(void (^)(NSError *))failure
{
    JTGProfileParam *param = [JTGProfileParam param];
    
    [JTGHttpTool GET:@"http://127.0.0.1/reqData/?action=uname" paramenters:param.keyValues success:^(id responseObject) {
        
        JTGProfileResult *result = [JTGProfileResult objectWithKeyValues:responseObject];
        JTGProfileModel *model = result.data;
        NSLog(@"%@",responseObject);
        NSArray *arrM = [NSArray arrayWithObject:model];
        if (successs) {
            successs(arrM);
        }
    } failure:^(NSError *error) {
        if (failure) {
            failure(error);
        }
    }];
}


//商品详情
+ (void)loadViewProWithId:(NSString *)idStr success:(void (^)(NSArray *))success failure:(void (^)(NSError *))failure
{
    JTGViewProParam *param = [JTGViewProParam param];
    param.id = idStr;
    [JTGHttpTool GET:@"http://127.0.0.1/reqData/?action=viewPro" paramenters:param.keyValues success:^(id responseObject) {
        NSLog(@"%@",responseObject);
        JTGViewProResult *result = [JTGViewProResult objectWithKeyValues:responseObject];
        JTGViewProCellFran *modelF = [[JTGViewProCellFran alloc]init];
        modelF.dataModel = result.data;
        
        NSArray * arrM = [NSArray arrayWithObject:modelF];
        if (success) {
            success(arrM);
        }
        
    } failure:^(NSError *error) {
        if (failure) {
            failure(error);
        }
    }];
}



//分类列表
 + (void)loadListGateWithType:(NSString *)type id:(NSString *)idStr success:(void (^)(NSArray *, NSArray *))success failure:(void (^)(NSError *))failure
{
    JTGListGateParam *param = [JTGListGateParam param];
    param.type = type;
    param.id = idStr;
    
    [JTGHttpTool GET:@"http://127.0.0.1/reqData?action=listCate" paramenters:param.keyValues success:^(id responseObject) {
        
        JTGListGateResult *result = [JTGListGateResult objectWithKeyValues:responseObject];
               JTGListGateData *data = result.data;
        NSMutableArray *arrM = [NSMutableArray array];
        for (JTGListCateModel *model in data.items) {
            [arrM addObject:model];
                   }
      
        if (success) {
            success(arrM,nil);
        }
        
        
    } failure:^(NSError *error) {
        if (failure) {
            failure(error);
        }
    }];
}

//加载轮播图
+ (void)LoadRunLoopPicsWithsuccess:(void (^)(NSArray *))success failure:(void (^)(NSError *))failure
{
    JTGRunLoopPicParam *param = [JTGRunLoopPicParam param];
    
    [JTGHttpTool GET:@"http://127.0.0.1/reqData/?action=listFocusAd" paramenters:param.keyValues success:^(id responseObject) {
        
        JTGRunLoopPicResult *result = [JTGRunLoopPicResult objectWithKeyValues:responseObject];
        JTGRunLoopData *data = result.data;
        NSMutableArray *arrM = [NSMutableArray array];
        for (JTGHomeList *list in data.items) {
            NSLog(@"%@",list.keyValues);
            [arrM addObject:list];
        }
        if (success) {
            success(arrM);
        }
        
    } failure:^(NSError *error) {
        if (failure) {
            failure(error);
        }
    }];
}


//首页数据加载
+ (void)loadListDataWithType:(NSString *)type id:(NSString *)idStr pgnm:(NSString *)pgnm success:(void (^)(NSArray *, NSString *))success failure:(void (^)(NSError *))failure
{
    JTGAccount *param = [JTGAccount param];
    
    
    [JTGHttpTool GET:@"http://127.0.0.1/reqData/?action=listPro" paramenters:param.keyValues success:^(id responseObject) {

        JTGHomeDataCellResult *result = [JTGHomeDataCellResult objectWithKeyValues:responseObject];
        JTGHomeData *data = result.data;
        NSMutableArray *arrM = [NSMutableArray array];
        for (JTGHomeList *list in data.items) {
            [arrM addObject:list];
            //            NSLog(@"%@",list.keyValues);
        }
        if (success) {
            success(arrM,result.pnum);
        }
    } failure:^(NSError *error) {
        if (failure) {
            failure(error);
        }
    }];
    

    
}
+ (void)loadHomeDataWithType:(NSString *)type id:(NSString *)idStr pgnm:(NSString *)pgnm success:(void (^)(NSArray *, NSString *))success failure:(void (^)(NSError *))failure
{
    JTGHomeCellDataParam *param = [JTGHomeCellDataParam param];
    param.type = type;
    param.id = idStr;
    param.pgnm = pgnm;
//    NSLog(@"------%@",pgnm);
    [JTGHttpTool GET:@"http://127.0.0.1/reqData/?action=listPro" paramenters:param.keyValues success:^(id responseObject) {
        
        JTGHomeDataCellResult *result = [JTGHomeDataCellResult objectWithKeyValues:responseObject];
        JTGHomeData *data = result.data;
        NSMutableArray *arrM = [NSMutableArray array];
        for (JTGHomeList *list in data.items) {
            [arrM addObject:list];
//            NSLog(@"%@",list.keyValues);
        }
        if (success) {
            success(arrM,result.pnum);
        }
    } failure:^(NSError *error) {
        if (failure) {
            failure(error);
        }
    }];
 

    
    
}



@end
