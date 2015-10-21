//
//  RecommendViewController.m
//  Carhome
//
//  Created by wz on 15-10-21.
//  Copyright (c) 2015年 wz. All rights reserved.
//

#import "RecommendViewController.h"
#import "NewestViewController.h"
#import "NewsflashViewController.h"
#import "VideoViewController.h"

@interface RecommendViewController (){
    NSMutableArray *_viewController;
}

@end

@implementation RecommendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    if ([self respondsToSelector:@selector(edgesForExtendedLayout)]) {
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
    _viewController = [NSMutableArray array];
    
    NewestViewController *newest = [[NewestViewController alloc] init];
    newest.title = @"最新";
    _viewController[0] = newest;
    NewsflashViewController *newestFlash = [[NewsflashViewController alloc] init];
    newestFlash.title = @"快报";
    _viewController[1] = newestFlash;
    VideoViewController *video = [[VideoViewController alloc] init];
    video.title = @"视频";
    _viewController[2] = video;
    VideoViewController *news = [[VideoViewController alloc] init];
    news.title = @"新闻";
    _viewController[3] = news;
    VideoViewController *evaluating = [[VideoViewController alloc] init];
    evaluating.title = @"评测";
    _viewController[4] = evaluating;
    VideoViewController *shopping = [[VideoViewController alloc] init];
    shopping.title = @"导购";
    _viewController[5] = shopping;
    VideoViewController *market = [[VideoViewController alloc] init];
    market.title = @"行情";
    _viewController[6] = market;
    VideoViewController *car = [[VideoViewController alloc] init];
    car.title = @"用车";
    _viewController[7] = car;
    VideoViewController *technology = [[VideoViewController alloc] init];
    technology.title = @"技术";
    _viewController[8] = technology;
    VideoViewController *culture = [[VideoViewController alloc] init];
    culture.title = @"文化";
    _viewController[9] = culture;
    VideoViewController *refit = [[VideoViewController alloc] init];
    refit.title = @"改装";
    _viewController[10] = refit;
    VideoViewController *travelNotes = [[VideoViewController alloc] init];
    travelNotes.title = @"游记";
    _viewController[11] = travelNotes;
    VideoViewController *originalVideo = [[VideoViewController alloc] init];
    originalVideo.title = @"原创视频";
    _viewController[12] = originalVideo;
    VideoViewController *persuader = [[VideoViewController alloc] init];
    persuader.title = @"说客";
    _viewController[13] = persuader;
    
    UIButton *rightSideButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [rightSideButton setImage:[UIImage imageNamed:@"bar_btn_icon_search.png"] forState:UIControlStateNormal];
    rightSideButton.frame = CGRectMake(0, 0, 20.0f, 44.0f);
    rightSideButton.userInteractionEnabled = NO;
    self.slideSwitchView.rigthSideButton = rightSideButton;
    
    [self.slideSwitchView buildUI];
}

#pragma mark - 滑动tab视图代理方法

- (NSUInteger)numberOfTab:(SUNSlideSwitchView *)view
{
    return _viewController.count;
}

- (UIViewController *)slideSwitchView:(SUNSlideSwitchView *)view viewOfTab:(NSUInteger)number
{
    return _viewController[number];
}


- (void)slideSwitchView:(SUNSlideSwitchView *)view didselectTab:(NSUInteger)number
{
    
    UIViewController *vc = _viewController[number];
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
