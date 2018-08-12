//
//  HTTableViewCell.m
//  XXTabelViewDemo
//
//  Created by awen on 2018/8/10.
//  Copyright © 2018年 awen. All rights reserved.
//

#import "HTTableViewCell.h"

static const CGFloat CellDefaultHeight = 48.0;

@implementation HTTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (void)bindCellWithModel:(HTBaseModel *)model {
    
}

+ (CGFloat)cellHeight {
    return CellDefaultHeight;
}

@end
