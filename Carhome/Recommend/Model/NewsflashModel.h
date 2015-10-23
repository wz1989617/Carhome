//
//  NewsflashModel.h
//  Carhome
//
//  Created by wz on 15-10-23.
//  Copyright (c) 2015年 wz. All rights reserved.
//

#import "TSBaseModel.h"

@interface NewsflashModel : TSBaseModel

/*

 "title": "特斯拉V7.0车载系统发布会",
 "reviewcount": 53822,
 "img": "http://app0.autoimg.cn/zx/newspic/Broadcast/2015/10/23/1024x768_0_2015102316160819190.jpg",
 "bgimage": "http://app0.autoimg.cn/zx/newspic/Broadcast/2015/10/23/1024x512_0_2015102316160407000.jpg",
 "typename": "其他快报",
 "createtime": "2015-10-23",
 "advancetime": "2015-10-23",
 
 */

@property (copy, nonatomic) NSString *title;
@property (copy, nonatomic) NSString *bgimage;
@property (copy, nonatomic) NSString *typename;
@property (copy, nonatomic) NSString *createtime;
@property (strong,nonatomic) NSNumber *reviewcount;


@end
