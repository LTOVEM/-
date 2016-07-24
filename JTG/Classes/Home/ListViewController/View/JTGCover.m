//
//  JTGCover.m
//  JTG
//
//  Created by LTOVE on 15/11/27.
//  Copyright (c) 2015年 LTOVE. All rights reserved.
//

#import "JTGCover.h"

@implementation JTGCover

/**
 *  设置浅灰色蒙版
 */
- (void)setDimBackGround:(BOOL)dimBackGround
{
    
    _dimBackGround = dimBackGround;
    if (dimBackGround) {
        self.backgroundColor = GWColor(0, 0, 0, 0.8);
    }else{
        self.alpha = 1;
//        self.backgroundColor = [UIColor clearColor];
    }
}
/**
 *  显示蒙版
 */
+ (instancetype)show
{
    JTGCover *cover = [[JTGCover alloc]initWithFrame:CGRectMake(0, 64, screenW, [UIScreen mainScreen].bounds.size.height - 64)];
    cover.backgroundColor = [UIColor clearColor];
    [[UIApplication sharedApplication].keyWindow addSubview:cover];
    return cover;
}
//点击蒙版的时候调用
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
//    移除蒙版
    [self removeFromSuperview];
    if ([_delegate respondsToSelector:@selector(coverDidClickCover:)]) {
        [_delegate coverDidClickCover:self];
    }
//    NSLog(@"==========%@",touches);
}

- (void)hiden
{
    [self removeFromSuperview];
    if ([_delegate respondsToSelector:@selector(coverDidClickCover:)]) {
        [_delegate coverDidClickCover:self];
    }

}


@end
