//
//  RecommendViewController.m
//  Carhome
//
//  Created by wz on 15-10-21.
//  Copyright (c) 2015年 wz. All rights reserved.
//

#import "RecommendViewController.h"


@interface RecommendViewController ()

@end

@implementation RecommendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    if ([self respondsToSelector:@selector(edgesForExtendedLayout)]) {
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
    

    self.slideSwitchView.tabItemNormalColor = [UIColor grayColor];
    self.slideSwitchView.tabItemSelectedColor = [UIColor blueColor];
    self.slideSwitchView.shadowImage = [[UIImage imageNamed:@"red_line_and_shadow.png"]
                                        stretchableImageWithLeftCapWidth:59.0f topCapHeight:0.0f];
    
    
    self.newest = [[NewestViewController alloc] init];
    self.newest.title = @"最新";
    
    self.newestFlash = [[NewsflashViewController alloc] init];
    self.newestFlash.title = @"快报";

    self.video = [[VideoViewController alloc] init];
    self.video.title = @"视频";

    self.news = [[VideoViewController alloc] init];
    self.news.title = @"新闻";

    self.evaluating = [[VideoViewController alloc] init];
    self.evaluating.title = @"评测";

    self.shopping = [[VideoViewController alloc] init];
    self.shopping.title = @"导购";

    self.market = [[VideoViewController alloc] init];
    self.market.title = @"行情";

    self.car = [[VideoViewController alloc] init];
    self.car.title = @"用车";

    self.technology = [[VideoViewController alloc] init];
    self.technology.title = @"技术";

    self.culture = [[VideoViewController alloc] init];
    self.culture.title = @"文化";

    self.refit = [[VideoViewController alloc] init];
    self.refit.title = @"改装";

    self.travelNotes = [[VideoViewController alloc] init];
    self.travelNotes.title = @"游记";

    self.originalVideo = [[VideoViewController alloc] init];
    self.originalVideo.title = @"原创视频";

    self.persuader = [[VideoViewController alloc] initWithNibName:@"VideoViewController" bundle:nil];
    self.persuader.title = @"说客";

    
    UIButton *rightSideButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [rightSideButton setImage:[UIImage imageNamed:@"bar_btn_icon_search.png"] forState:UIControlStateNormal];
    rightSideButton.frame = CGRectMake(0, 0, 44.0f, 44.0f);
    rightSideButton.userInteractionEnabled = NO;
    self.slideSwitchView.rigthSideButton = rightSideButton;
    
    [self.slideSwitchView buildUI];
}

#pragma mark - 滑动tab视图代理方法

- (NSUInteger)numberOfTab:(SUNSlideSwitchView *)view
{
    return 14;
}

- (UIViewController *)slideSwitchView:(SUNSlideSwitchView *)view viewOfTab:(NSUInteger)number
{
    if (number == 0) {
        return self.newest;
    } else if (number == 1){
        return self.newestFlash;
    } else if (number == 2){
        return self.video;
    } else if (number == 3){
        return self.news;
    } else if (number == 4){
        return self.evaluating;
    } else if (number == 5){
        return self.shopping;
    } else if (number == 6){
        return self.market;
    } else if (number == 7){
        return self.car;
    } else if (number == 8){
        return self.technology;
    } else if (number == 9){
        return self.culture;
    } else if (number == 10){
        return self.refit;
    } else if (number == 11){
        return self.travelNotes;
    } else if (number == 12){
        return self.originalVideo;
    } else if (number == 13){
        return self.persuader;
    } else {
        return nil;
    }
}


- (void)slideSwitchView:(SUNSlideSwitchView *)view didselectTab:(NSUInteger)number
{
    
    NewestViewController *newestVC = nil;
    NewsflashViewController *newestFlashVC = nil;
    VideoViewController *videoVC = nil;
    VideoViewController *newsVC = nil;
    VideoViewController *evaluatingVC = nil;
    VideoViewController *shoppingVC = nil;
    VideoViewController *marketVC = nil;
    VideoViewController *carVC = nil;
    VideoViewController *technologyVC = nil;
    VideoViewController *cultureVC = nil;
    VideoViewController *refitVC = nil;
    VideoViewController *travelNotesVC = nil;
    VideoViewController *originalVideoVC = nil;
    VideoViewController *persuaderVC = nil;
    
    if (number == 0) {
        newestVC = self.newest;
    } else if (number == 1){
        newestFlashVC = self.newestFlash;
    } else if (number == 2){
        videoVC = self.video;
    } else if (number == 3){
        newsVC = self.news;
    } else if (number == 4){
        evaluatingVC = self.evaluating;
    } else if (number == 5){
        shoppingVC = self.shopping;
    } else if (number == 6){
        marketVC = self.market;
    } else if (number == 7){
        carVC = self.car;
    } else if (number == 8){
        technologyVC = self.technology;
    } else if (number == 9){
        cultureVC = self.culture;
    } else if (number == 10){
        refitVC = self.refit;
    } else if (number == 11){
        travelNotesVC = self.travelNotes;
    } else if (number == 12){
        originalVideoVC = self.originalVideo;
    } else if (number == 13){
        persuaderVC = self.persuader;
    }
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
