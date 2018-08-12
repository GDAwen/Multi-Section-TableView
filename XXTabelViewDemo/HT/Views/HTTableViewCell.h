//
//  HTTableViewCell.h
//  XXTabelViewDemo
//
//  Created by awen on 2018/8/10.
//  Copyright © 2018年 awen. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HTBaseModel;

@interface HTTableViewCell : UITableViewCell

//交由子类重写，可以考虑使用协议来做

- (void)bindCellWithModel:(HTBaseModel *)model;

//可以在model中计算
+ (CGFloat)cellHeight;




@end
