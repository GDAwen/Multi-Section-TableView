//
//  XXTableViewCellInfo.m
//  XXTabelViewDemo
//
//  Created by awen on 2018/7/25.
//  Copyright © 2018年 awen. All rights reserved.
//

#import "XXTableViewCellInfo.h"
#import "XXTableViewCell.h"


static const CGFloat DefaultCellHeight = 44.0;

@implementation XXTableViewCellInfo

- (instancetype)init {
    self = [super init];
    if (self) {
        _cellHeight = DefaultCellHeight;
    }
    return self;
}





@end
