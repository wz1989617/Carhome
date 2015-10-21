//
//  TSHeaderView.m
//  Carhome
//
//  Created by wz on 15-10-21.
//  Copyright (c) 2015年 wz. All rights reserved.
//

#import "TSHeaderView.h"

@interface TSHeaderView ()<UIScrollViewDelegate>
{
    UIImageView *imageView;
    NSTimer *timer;
    NSArray *images;
    NSMutableArray *_imageURLArray;
    NSMutableArray *_titleArray;
}

@property(nonatomic, strong)UIScrollView *scrollView;
@property(nonatomic, strong)UIPageControl *pageControl;
@property(nonatomic, strong)UILabel *titleLabel;

@property(nonatomic, assign)CGFloat width;
@property(nonatomic, assign)CGFloat height;

@end

@implementation TSHeaderView

//
//- (instancetype)init
//{
//    self = [super init];
//    if (self) {
//        self.width = TScreenWidth;
//        self.height = self.frame.size.height;
//        
//    }
//    return self;
//}
//
//
//- (void)awakeFromNib
//{
//    self.width = TScreenWidth;
//    self.height = self.frame.size.height;
//    
//    [self creatTapGesture];
//    
//}
//
//
//- (void)creatTapGesture
//{
//    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction:)];
//    
//    [self addGestureRecognizer:tap];
//}
//
//
//
//- (void)tapAction:(UITapGestureRecognizer *)tap
//{
//    // 当代理对象实现了代理方法时才调用
//    if ([self.delegate respondsToSelector:@selector(tapHeaderViewWithCurrentPage:)]) {
//        
//        [self.delegate tapHeaderViewWithCurrentPage:self.pageControl.currentPage];
//    }
//    
//}
//
//
//- (void)headerViewWithImageURLs:(NSArray *)imageURLs titles:(NSArray *)titles
//{
//    // 4、1、2、3、4、1
//    _titleArray = [NSMutableArray arrayWithArray:titles];
//    _imageURLArray = [NSMutableArray arrayWithArray:imageURLs];
//    [_imageURLArray insertObject:[imageURLs lastObject] atIndex:0];
//    [_imageURLArray addObject:[imageURLs firstObject]];
//    
//    [self addSubview:self.scrollView];
//    [self addSubview:self.titleLabel];
//    [self addSubview:self.pageControl];
//    
//    
//    
//    for (int i = 0; i < _imageURLArray.count; i++) {
//        
//        imageView = [[UIImageView alloc] initWithFrame:CGRectMake(self.width * i, 0, self.width, self.height)];
//        
//        [imageView sd_setImageWithURL:_imageURLArray[i]];
//        
//        [_scrollView addSubview:imageView];
//        
//    }
//    
//    [self crateTimer:3];
//    
//}
//
//- (void)crateTimer:(CGFloat)time
//{
//    [timer invalidate];
//    timer = [NSTimer scheduledTimerWithTimeInterval:time target:self
//                                           selector:@selector(automaticScroll:)
//                                           userInfo: nil
//                                            repeats:YES];
//}
//
//
//#pragma mark - 自动循环滚动
//- (void)automaticScroll:(NSTimer *)theTimer
//{
//    CGFloat xOffset = _scrollView.contentOffset.x;
//    
//    [_scrollView setContentOffset:CGPointMake(xOffset + self.width, 0) animated:YES];
//    _pageControl.currentPage = xOffset / self.width;
//    
//    if (self.width *( _imageURLArray.count - 2) == xOffset) {
//        
//        // GCD中的延迟调用一个方法
//        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//            
//            [_scrollView setContentOffset:CGPointMake(self.width, 0) animated:NO];
//            
//        });
//        _pageControl.currentPage = 0;
//    }
//    
//    _titleLabel.text = _titleArray[_pageControl.currentPage];
//    
//}
//
//#pragma mark - scrollView代理
//-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
//    
//    // 手指滑动时暂停定时器
//    timer.fireDate = [NSDate distantFuture];
//    
//}
//
//-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
//    
//    CGFloat xOffset = scrollView.contentOffset.x;
//    _pageControl.currentPage = (xOffset - self.width) / self.width;
//    
//    if (xOffset == self.width * (_imageURLArray.count - 1)) {
//        [_scrollView setContentOffset:CGPointMake(self.width, 0) animated:NO];
//        _pageControl.currentPage = 0;
//    }
//    if (xOffset == 0) {
//        [_scrollView setContentOffset:CGPointMake(self.width * (_imageURLArray.count - 2), 0) animated:NO];
//        _pageControl.currentPage = _imageURLArray.count - 3;
//    }
//    
//    // 手指滑动结束后(延迟3秒)启动定时器
//    NSDate *currentDate = [[NSDate alloc]init];
//    NSDate *date = [currentDate dateByAddingTimeInterval:_scrollTime];
//    timer.fireDate = date;
//    _titleLabel.text = _titleArray[_pageControl.currentPage];
//}
//
//
//#pragma mark - 创建视图
//-(UIScrollView *)scrollView{
//    
//    if (_scrollView == nil) {
//        
//        _scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, self.width, self.height)];
//        _scrollView.contentSize = CGSizeMake(self.width * _imageURLArray.count, self.height);
//        _scrollView.pagingEnabled = YES;
//        _scrollView.scrollEnabled = YES;
//        _scrollView.showsHorizontalScrollIndicator = NO;
//        _scrollView.delegate = self;
//        [_scrollView setContentOffset:CGPointMake(self.width, 0) animated:NO];
//    }
//    
//    return _scrollView;
//}
//
//
//-(UIPageControl *)pageControl{
//    
//    if (_pageControl == nil) {
//        
//        _pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(self.width - 40,self.height - 20, 0, 20)];
//        _pageControl.numberOfPages = _imageURLArray.count - 2;
//        _pageControl.currentPage = 0;
//        _pageControl.pageIndicatorTintColor = self.pageColor;
//        _pageControl.currentPageIndicatorTintColor = self.currentPageColor;
//    }
//    return _pageControl;
//}
//
//
//- (UILabel *)titleLabel
//{
//    if (_titleLabel == nil) {
//        
//        UIView *titleBgView = [[UIView alloc] initWithFrame:CGRectMake(0, self.height - 20, self.width, 20)];
//        titleBgView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.4];
//        [self addSubview:titleBgView];
//        
//        _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, self.height - 20, self.width, 20)];
//        _titleLabel.font = [UIFont boldSystemFontOfSize:13];
//        _titleLabel.textColor = [UIColor whiteColor];
//        _titleLabel.text = _titleArray[0];
//    }
//    
//    return _titleLabel;
//}
//
//
//- (void)setScrollTime:(CGFloat)scrollTime
//{
//    _scrollTime = scrollTime;
//    [self crateTimer:scrollTime];
//}
//
//- (void)setPageColor:(UIColor *)pageColor
//{
//    _pageColor = pageColor;
//    _pageControl.pageIndicatorTintColor = pageColor;
//}
//
//- (void)setCurrentPageColor:(UIColor *)currentPageColor
//{
//    _currentPageColor = currentPageColor;
//    _pageControl.currentPageIndicatorTintColor = currentPageColor;
//}

@end

