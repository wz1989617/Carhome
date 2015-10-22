//
//  NewestViewController.m
//  Carhome
//
//  Created by wz on 15-10-21.
//  Copyright (c) 2015年 wz. All rights reserved.
//

#import "NewestViewController.h"
#import "AFNetworking.h"
#import "TokenModel.h"
#import "AchiverToken.h"
#import "NewsModel.h"
#import "JsonData.h"
#import "TSHeaderView.h"



@interface NewestViewController ()<TSHeaderViewDelegate>{

    NSMutableArray *_bannerLinkURLs; // 头视图的链接地址
    
}

@property (weak, nonatomic) IBOutlet TSHeaderView *newsHeaderView;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic)NSMutableArray *newsModelArray;


@end

@implementation NewestViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self loadNewestData];
//    [self loadHeaderViewNewsData];

}


- (void)loadNewestData{
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
    [manager GET:HomeWeiboURL parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        [self fromDicToModel:responseObject];
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
    }];
    
}

#pragma mark - 获取头部滚动视图的数据
- (void)fromDicToModel:(NSDictionary *)dic {
    
    NSMutableArray *bannerImageURLs = [NSMutableArray array];
    
    for (NSDictionary *newsDic in dic[@"result"][@"focusimg"]) {

        
        NewsModel *model = [[NewsModel alloc] initWithDictionary:newsDic];
        [bannerImageURLs addObject:model.imgurl];
        NSLog(@"+++%@",bannerImageURLs);
        
        
    }
    
    [_newsHeaderView headerViewWithImageURLs:bannerImageURLs titles:nil];
    _newsHeaderView.delegate = self;
    _newsHeaderView.scrollTime = 3;
    _newsHeaderView.pageColor = [UIColor grayColor];
    _newsHeaderView.currentPageColor = [UIColor whiteColor];
}








- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSMutableArray *)newsModelArray{
    
    if (_newsModelArray == nil) {
        _newsModelArray = [NSMutableArray array];
    }
    
    return _newsModelArray;
}

@end
