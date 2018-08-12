//
//  HTTableViewCellInfo.m
//  XXTabelViewDemo
//
//  Created by awen on 2018/8/10.
//  Copyright © 2018年 awen. All rights reserved.
//

#import "HTTableViewCellInfo.h"


static const CGFloat CellDefaultHeight = 48.0;

@implementation HTTableViewCellInfo

- (instancetype)initWithCellClass:(Class)cls 
						   target:(Class)target 
						   action:(SEL)sel 
					   cellHeight:(CGFloat)height {
    NSAssert(cls != nil && ![cls isKindOfClass:[UITableViewCell class]], @"cell class 不合法 !!!");
    self = [super init];
    if(self) {
        _cellSEL = sel;
        _actionTarget = target;
        [_cellClass setValue:cls forKey:@"cellClass"];
        _identifier =  NSStringFromClass(cls);
    }
    return self;
}

+ (instancetype)cellInfoWithCellClass:(Class)cls 
							   target:(id)target 
							   action:(SEL)sel
						   cellHeight:(CGFloat)height {
	return [[HTTableViewCellInfo alloc] initWithCellClass:cls target:target action:sel cellHeight:height];
	
}

//使用默认高度
+ (instancetype)cellInfoWithCellClass:(Class)cls 
							   target:(id)target 
							   action:(SEL)sel {
	return [[HTTableViewCellInfo alloc] initWithCellClass:cls target:target action:sel cellHeight:CellDefaultHeight];
}

//不需要点击事件
+ (instancetype)cellInfoWithCellClass:(Class)cls
                           cellHeight:(CGFloat)height {
	return [[HTTableViewCellInfo alloc] initWithCellClass:cls target:nil action:nil cellHeight:height];
}

//不需要点击事件、使用默认高度
+ (instancetype)cellInfoWithCellClass:(Class)cls {
	return [[HTTableViewCellInfo alloc] initWithCellClass:cls target:nil action:nil cellHeight:CellDefaultHeight];
}


@end
