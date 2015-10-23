//
//  NewestTableViewCell.m
//  Carhome
//
//  Created by wz on 15-10-22.
//  Copyright (c) 2015年 wz. All rights reserved.
//

#import "NewestTableViewCell.h"
#import "UIImageView+WebCache.h"
#import "HeadlineinfoModel.h"
#define  OtherViewsHeight 80 // 图片的高度



@interface NewestTableViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *newestImgeView;
@property (weak, nonatomic) IBOutlet UILabel *headlineLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *commentLabel;


@end



@implementation NewestTableViewCell

- (void)awakeFromNib {
   
    
}

- (void)setModel:(HeadlineinfoModel *)model{
    _model = model;
    self.headlineLabel.text = _model.title;
    self.timeLabel.text = _model.time;
    self.commentLabel.text = [NSString stringWithFormat:@"%@评论",_model.replycount];

    [self.newestImgeView sd_setImageWithURL:[NSURL URLWithString:_model.smallpic]];
}




- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
