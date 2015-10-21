//
//  TokenModel.m
//  TensWeibo_Demo
//
//  Created by qinglinfu on 15/10/7.
//  Copyright (c) 2015年 十安科技. All rights reserved.
//

#import "TokenModel.h"

@implementation TokenModel


- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    self.creatDate = [NSDate date];
}

// 给属性加密
- (void)encodeWithCoder:(NSCoder *)coder
{
    [coder encodeObject:self.access_token forKey:@"access_token"];
    [coder encodeObject:self.expires_in forKey:@"expires_in"];
    [coder encodeObject:self.uid forKey:@"uid"];
    [coder encodeObject:self.creatDate forKey:@"creatDate"];
    
}

// 属性解密
- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    
    if (self) {
       
        self.access_token = [aDecoder decodeObjectForKey:@"access_token"];
        self.expires_in = [aDecoder decodeObjectForKey:@"expires_in"];
        self.uid = [aDecoder decodeObjectForKey:@"uid"];
        self.creatDate = [aDecoder decodeObjectForKey:@"creatDate"];
    }
    return self;
}



@end
