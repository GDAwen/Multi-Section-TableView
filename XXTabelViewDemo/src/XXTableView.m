//
//  XXTableView.m
//  XXTabelViewDemo
//
//  Created by awen on 2018/7/25.
//  Copyright © 2018年 awen. All rights reserved.
//

#import "XXTableView.h"

@implementation XXTableView
- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    self = [super initWithFrame:frame style:style];
    
    if (self) {
        if (@available(iOS 11.0, *)) {
            self.estimatedRowHeight = 44;
            self.estimatedSectionFooterHeight = 0.01;
            self.estimatedSectionHeaderHeight = 0.01;
            self.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        }
    }
    return self;
}


@end
