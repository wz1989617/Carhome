//
//  TSTabBarController.m
//  Carhome
//
//  Created by wz on 15-10-20.
//  Copyright (c) 2015年 wz. All rights reserved.
//

#import "TSTabBarController.h"

@interface TSTabBarController ()

@end

@implementation TSTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTabBarItemSeleted];

}

- (void)setTabBarItemSeleted{
    
    self.tabBar.barTintColor = [UIColor whiteColor];
    
    NSArray *selectImages = @[@"item01_selected",
                              @"item02_selected",
                              @"item03_selected",
                              @"item04_selected",
                              @"item05_selected"];
    NSArray *viewVC = self.viewControllers;
    
    for (int i = 0; i < selectImages.count; i++) {

        UIViewController *viewCol = viewVC[i];
        UIImage *selectImage = [UIImage imageNamed:selectImages[i]];
        viewCol.tabBarItem.selectedImage = [selectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
