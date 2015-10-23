//
//  HeadlineinfoModel.h
//  Carhome
//
//  Created by wz on 15-10-23.
//  Copyright (c) 2015年 wz. All rights reserved.
//

#import "TSBaseModel.h"

@interface HeadlineinfoModel : TSBaseModel

/*
 replycount = 406;
 smallpic = "http://www0.autoimg.cn/zx/newspic/2015/10/21/160x120_0_2015102110504012963.jpg";
 time = "2015-10-23";
 title = "BBA\U4ee5\U5916\U7684\U9009\U62e9 4\U6b3e40\U4e07\U5de6\U53f3\U4e2d\U578bSUV\U63a8\U8350";

 */

@property (copy, nonatomic) NSString *title;       //标题
@property (copy, nonatomic) NSString *time;        //时间
@property (copy, nonatomic) NSString *smallpic;    //图片
@property (strong, nonatomic) NSNumber *replycount;  //评论

@end
