//
//  RecommendViewController.h
//  Carhome
//
//  Created by wz on 15-10-21.
//  Copyright (c) 2015年 wz. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface RecommendViewController : UIViewController <SUNSlideSwitchViewDelegate>

{
    SUNSlideSwitchView *slideSwitchView;
}


@property (weak, nonatomic) IBOutlet SUNSlideSwitchView *slideSwitchView;

@end
