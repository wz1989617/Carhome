//
//  achviToken.h
//  TensWeibo_Demo
//
//  Created by qinglinfu on 15/10/7.
//  Copyright (c) 2015年 十安科技. All rights reserved.
//

#import <Foundation/Foundation.h>
@class TokenModel;

@interface AchiverToken : NSObject

/**
 *  本地保存(归档)tokenModel数据
 *
 *  @param model <#model description#>
 */
+ (void)achiverTokenModle:(TokenModel *)model;


/**
 *  解归档tokenModel数据
 *
 *  @return <#return value description#>
 */
+ (TokenModel *)unarchiverTokenModle;


@end
