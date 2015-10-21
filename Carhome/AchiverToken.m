//
//  achviToken.m
//  TensWeibo_Demo
//
//  Created by qinglinfu on 15/10/7.
//  Copyright (c) 2015年 十安科技. All rights reserved.
//

// 本地保存的tokenModel的路劲

#define TokenAchiverPath  [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"tokenModel.plist"]

#import "AchiverToken.h"
#import "TokenModel.h"

@implementation AchiverToken


+ (void)achiverTokenModle:(TokenModel *)model
{
    [NSKeyedArchiver archiveRootObject:model toFile:TokenAchiverPath];
}


+ (TokenModel *)unarchiverTokenModle
{
    TokenModel *model =  [NSKeyedUnarchiver unarchiveObjectWithFile:TokenAchiverPath];
    
    // 截止日期
    NSDate *date = [model.creatDate dateByAddingTimeInterval:[model.expires_in doubleValue]];
    NSComparisonResult result = [[NSDate date] compare:date];
    // 当前日期是降序则过期
    if (result == NSOrderedDescending) {
        
        return nil;
    }
    
    return model;
}

@end
