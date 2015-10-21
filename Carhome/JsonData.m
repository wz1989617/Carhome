//
//  JsonData.m
//  TensNews
//
//  Created by qinglinfu on 15/8/25.
//  Copyright (c) 2015年 十安科技. All rights reserved.
//

#import "JsonData.h"

@implementation JsonData

+ (id)jsonDataToObjectWithFielName:(NSString *)fileName
{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:fileName ofType:@"json"];
    
    NSData *jsonData = [NSData dataWithContentsOfFile:filePath];
    id object = [ NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:nil];
    
    return object;
}

@end
