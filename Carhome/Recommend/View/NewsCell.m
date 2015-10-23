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


@end

@implementation NewsCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setModel:(NewsModel *)model{
    _model = model;

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
