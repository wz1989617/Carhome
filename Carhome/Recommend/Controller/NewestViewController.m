//
//  NewestViewController.m
//  Carhome
//
//  Created by wz on 15-10-21.
//  Copyright (c) 2015年 wz. All rights reserved.
//

#import "NewestViewController.h"
#import "TokenModel.h"
#import "AchiverToken.h"
#import "NewsModel.h"
#import "JsonData.h"
#import "TSHeaderView.h"
#import "NewestTableViewCell.h"
#import "HeadlineinfoModel.h"



@interface NewestViewController ()<TSHeaderViewDelegate,UITableViewDataSource,UITableViewDelegate>
{

    NSMutableArray *_bannerLinkURLs; // 头视图的链接地址

    
}

@property (weak, nonatomic) IBOutlet TSHeaderView *newsHeaderView;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic)NSMutableArray *newsModelArray;


@end

static NSString *cellID = @"newestTableViewCell";
@implementation NewestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
//    [self tableView];
    [self loadNewestData];
    
    // 注册单元格
    [self.tableView registerNib:[UINib nibWithNibName:@"NewestTableViewCell" bundle:nil] forCellReuseIdentifier:cellID];

}


- (void)loadNewestData{
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:HomeWeiboURL parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
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

    }
    
    for (NSDictionary *headDic in dic[@"result"][@"newslist"]) {
        HeadlineinfoModel *headModel = [[HeadlineinfoModel alloc] initWithDictionary:headDic];
        
        [self.newsModelArray addObject:headModel];
    }

    [self.tableView reloadData];
    
    [_newsHeaderView headerViewWithImageURLs:bannerImageURLs titles:nil];
    _newsHeaderView.delegate = self;
    _newsHeaderView.scrollTime = 3;
    _newsHeaderView.pageColor = [UIColor grayColor];
    _newsHeaderView.currentPageColor = [UIColor whiteColor];
}

#pragma mark - <UITableViewDataSource,UITableViewDelegate>
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.newsModelArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NewestTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    cell.model = self.newsModelArray[indexPath.row];
    return cell;
}


#pragma mark - 计算cell高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
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
