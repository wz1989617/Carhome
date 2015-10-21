//
//  NewsCell.m
//  Carhome
//
//  Created by wz on 15-10-20.
//  Copyright (c) 2015年 wz. All rights reserved.
//

#import "NewsCell.h"
#import "UIImageView+WebCache.h"

@interface NewsCell ()
@property (weak, nonatomic) IBOutlet UIView *titleImageView;
@property (weak, nonatomic) IBOutlet UILabel *headlineLabei;
@property (weak, nonatomic) IBOutlet UILabel *timeLabei;
@property (weak, nonatomic) IBOutlet UILabel *commentLabei;

@end

@implementation NewsCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setModel:(NewsModel *)model{
    _model = model;
    self.headlineLabei.text = _model.title;
    self.timeLabei.text = _model.time;
    self.commentLabei.text = _model.replycount;
    self.titleImageView = [UIImage imageNamed:_model.smallpic];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
