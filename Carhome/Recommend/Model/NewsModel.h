//
//  Model.h
//  Carhome
//
//  Created by wz on 15-10-20.
//  Copyright (c) 2015年 wz. All rights reserved.
//

#import "TSBaseModel.h"

@interface NewsModel : TSBaseModel

/*

 "title": "汽车之家2015年新车质量报告：小型车篇",
 "time": "2015-10-20",
 "smallpic": "http://www0.autoimg.cn/zx/newspic/2015/10/19/160x120_0_2015101918112592354.jpg",
 "replycount": 2463,
 
 */

@property (copy, nonatomic) NSString *title;
@property (copy, nonatomic) NSString *time;
@property (copy, nonatomic) NSString *imgurl;
@property (copy, nonatomic) NSString *smallpic;
@property (strong, nonatomic) NSString *replycount;
@property (strong, nonatomic) NSString *updatetime;




@end
