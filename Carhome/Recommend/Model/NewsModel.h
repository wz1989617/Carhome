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
 "id": 880695,
 "type": "新闻中心",
 "title": "售5.78-7.28万元 北汽新款幻速S3上市",
 "replycount": 206,
 "pagelist": "",
 "pagenum": 1,
 "url": "http://www.autohome.com.cn/news/201510/880695.html",
 "description": "日前，北汽幻速官方宣布，新款幻速S3正式上市，新车将推出两种排量共计5款车型，售价为5.78-7.28万元，详...",
 "img": "http://www0.autoimg.cn/zx/newspic/2015/10/23/400x300_0_2015102314181810804.jpg",
 "time": "2015-10-23",
 "serializeorders": 1,

 "notallowcomment": 0
 
 */


@property (copy, nonatomic) NSString *imgurl;        // 透视图图片链接


@end
