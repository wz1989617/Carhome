//
//  TokenModel.h
//  TensWeibo_Demo
//
//  Created by qinglinfu on 15/10/7.
//  Copyright (c) 2015年 十安科技. All rights reserved.
//

#import "TSBaseModel.h"

@interface TokenModel : TSBaseModel 

/**
 *   {
 "access_token" = "2.002_1bMGDvZtVCbd2ead4bfb06b3ug";
 "expires_in" = 157679999;
 uid = 5683009239;
 }
 */

@property (copy, nonatomic) NSString *access_token;
@property (strong, nonatomic) NSNumber *expires_in;
@property (strong, nonatomic) NSNumber *uid;
//**  创建的日期 */
@property (strong, nonatomic) NSDate *creatDate;

@end
