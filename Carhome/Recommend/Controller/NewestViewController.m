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


@interface NewestViewController ()
@property (weak, nonatomic) IBOutlet UIView *headView;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic)NSMutableArray *newsModelArray;

@end

@implementation NewestViewController

- (NSMutableArray *)newsModelArray{
    
    if (_newsModelArray == nil) {
        _newsModelArray = [NSMutableArray array];
    }
    
    return _newsModelArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
