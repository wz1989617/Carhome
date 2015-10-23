//
//  NewsflashViewController.m
//  Carhome
//
//  Created by wz on 15-10-21.
//  Copyright (c) 2015年 wz. All rights reserved.
//

#import "NewsflashViewController.h"
#import "NewsflashTableViewCell.h"
#import "NewsflashModel.h"


@interface NewsflashViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *newsflashTableView;
@property (strong, nonatomic) NSMutableArray *newsflashArray;

@end

static NSString *cellID = @"newsflashTableViewCell";
@implementation NewsflashViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.newsflashTableView registerNib:[UINib nibWithNibName:@"NewsflashTableViewCell" bundle:nil] forCellReuseIdentifier:cellID];
    [self loadNewsflashData];
    
}

- (void)loadNewsflashData{

    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:NewsFlashURL parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {

        [self fromDicToModel:responseObject];
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {

    }];
    
}

- (void)fromDicToModel:(NSDictionary *)dic {
    
    for (NSDictionary *newsDic in dic[@"result"][@"list"]) {
        NewsflashModel *model = [[NewsflashModel alloc] initWithDictionary:newsDic];
        
        [self.newsflashArray addObject:model];
    }
    
    [self.newsflashTableView reloadData];

}

#pragma mark - <UITableViewDataSource,UITableViewDelegate>
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.newsflashArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
   
    NewsflashTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    
    cell.model = self.newsflashArray[indexPath.row];
    
    return cell;
}

#pragma mark - 计算cell高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 280;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSMutableArray *)newsflashArray{
    
    if (_newsflashArray == nil) {
        _newsflashArray = [NSMutableArray array];
    }
    
    return _newsflashArray;
}


@end
