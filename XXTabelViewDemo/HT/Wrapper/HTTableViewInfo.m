//
//  HTTableViewInfo.m
//  XXTabelViewDemo
//
//  Created by awen on 2018/8/10.
//  Copyright © 2018年 awen. All rights reserved.
//

#import "HTTableViewInfo.h"
#import "UITableView+Reuse.h"
#import "HTTableViewCell.h"
#import "HTTableViewSectionView.h"

@interface HTTableViewInfo () {
	NSMutableArray *_sectionArr;
	HTTableView *_tableView;
}

@end


@implementation HTTableViewInfo
- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
	self = [super init];
	if (self) {
		_tableView = [[HTTableView alloc] initWithFrame:frame style:style];
		_tableView.delegate = self;
		_tableView.dataSource = self;
		_sectionArr = [NSMutableArray new];
	}
	return self;
}

- (UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath { 
	HTTableViewSectionInfo *sectionInfo = _sectionArr[indexPath.section];
	HTTableViewCellInfo *cellInfo = [sectionInfo cellAt:indexPath.row];
	HTTableViewCell *cell = (HTTableViewCell *)[tableView dequeueReusableCellWithClass:cellInfo.cellClass];

	//bind cell with model
	
	return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section { 
	
	HTTableViewSectionInfo *sectionInfo = _sectionArr[section];
	return sectionInfo.cellCount;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return  _sectionArr.count;
}





@end
