//
//  NewsflashTableViewCell.m
//  Carhome
//
//  Created by wz on 15-10-23.
//  Copyright (c) 2015年 wz. All rights reserved.
//

#import "NewsflashTableViewCell.h"
#import "NewsflashModel.h"

@interface NewsflashTableViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *otherLabel;
@property (weak, nonatomic) IBOutlet UILabel *headlineLabel;
@property (weak, nonatomic) IBOutlet UILabel *audienceLabel;
@property (weak, nonatomic) IBOutlet UIImageView *newsFlashImageVIew;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@end

@implementation NewsflashTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setModel:(NewsflashModel *)model{
    _model = model;
    
    self.otherLabel.text = _model.typename;
    self.headlineLabel.text = _model.title;
    self.audienceLabel.text = [NSString stringWithFormat:@"%@观众",_model.reviewcount];
    [self.newsFlashImageVIew sd_setImageWithURL:[NSURL URLWithString:_model.bgimage]];
    self.timeLabel.text = _model.createtime;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
