//
//  TSHeaderView.h
//  Carhome
//
//  Created by wz on 15-10-21.
//  Copyright (c) 2015年 wz. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@protocol TSHeaderViewDelegate <NSObject>

// 点击头视图时调用的协议方法
- (void)tapHeaderViewWithCurrentPage:(NSInteger)currentPage;

@end

@interface TSHeaderView : NSObject

/**
 *  根据传入的图片URL数组，创建自动循环滚动的视图
 *
 *  @param imageURLs 图片的URL字符串数组
 *  @param titles    显示的标题的数组
 */
- (void)headerViewWithImageURLs:(NSArray *)imageURLs titles:(NSArray *)titles;

/**
 *  自动滚动的时间
 */
@property (nonatomic, assign) CGFloat scrollTime;

/**
 *  pageControl 的自然颜色
 */
@property (nonatomic, strong) UIColor *pageColor;

/**
 *  pageControl 的当前页颜色
 */
@property (nonatomic, strong) UIColor *currentPageColor;

/**
 *  代理对象
 */
@property (nonatomic, weak) id<TSHeaderViewDelegate>delegate;

@end
