//
//  HTViewModel.m
//  XXTabelViewDemo
//
//  Created by Andrew on 2018/8/12.
//  Copyright © 2018年 awen. All rights reserved.
//

#import "HTViewModel.h"

@interface HTViewModel()
@property (nonatomic, weak) id <HTViewModelPotocol>delegate;
@end

@implementation HTViewModel
- (instancetype)initWith:(id<HTViewModelPotocol>)protcol {
	self = [super init];
	if (self) {
		_delegate = protcol;
	}
	return self;
}

@end
