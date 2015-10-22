//
//  RecommendViewController.h
//  Carhome
//
//  Created by wz on 15-10-21.
//  Copyright (c) 2015年 wz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewestViewController.h"
#import "NewsflashViewController.h"
#import "VideoViewController.h"


@interface RecommendViewController : UIViewController <SUNSlideSwitchViewDelegate>

@property (weak, nonatomic) IBOutlet SUNSlideSwitchView *slideSwitchView;
@property (strong, nonatomic) NewestViewController *newest;
@property (strong, nonatomic) NewsflashViewController *newestFlash;
@property (strong, nonatomic) VideoViewController *video;
@property (strong, nonatomic) VideoViewController *news;
@property (strong, nonatomic) VideoViewController *evaluating;
@property (strong, nonatomic) VideoViewController *shopping;
@property (strong, nonatomic) VideoViewController *market;
@property (strong, nonatomic) VideoViewController *car;
@property (strong, nonatomic) VideoViewController *technology;
@property (strong, nonatomic) VideoViewController *culture;
@property (strong, nonatomic) VideoViewController *refit;
@property (strong, nonatomic) VideoViewController *travelNotes;
@property (strong, nonatomic) VideoViewController *originalVideo;
@property (strong, nonatomic) VideoViewController *persuader;

@end
