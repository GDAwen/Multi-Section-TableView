//
//  HTTableViewSectionInfo.m
//  XXTabelViewDemo
//
//  Created by awen on 2018/8/10.
//  Copyright © 2018年 awen. All rights reserved.
//

#import "HTTableViewSectionInfo.h"

static const CGFloat DefaultFooterH = 0.001;
static const CGFloat DefaultHeaderH = 15;

@interface HTTableViewSectionInfo() {
	NSMutableArray *_cellArr;
}

@end


@implementation HTTableViewSectionInfo

- (instancetype)init {
	self = [super init];
	if (self) {
		_cellArr = [NSMutableArray new];
		_footerHeight = DefaultFooterH;
		_headerHeight = DefaultHeaderH;
		[self setValue:[UITableViewHeaderFooterView class] forKey:@"_headerCls"];
		[self setValue:[UITableViewHeaderFooterView class] forKey:@"_footerCls"];
	}
	return self;
}

- (instancetype)initWithHeaderCls:(Class)headerCls 
					 headerHeight:(CGFloat)headerH 
					 headerTarget:(id)headerT 
						headerSEL:(SEL)headerSEL 
					  footerClass:(Class)footerCls 
					 footerHeight:(CGFloat)footerH 
					 footerTarget:(id)footerT 
						footerSEL:(SEL)footerSEL {

	NSAssert(![headerCls isKindOfClass:[UITableViewHeaderFooterView class]], @"headerView class 不合法 !!!");
	NSAssert(![footerCls isKindOfClass:[UITableViewHeaderFooterView class]], @"footerView class 不合法 !!!");
	self = [super init];
	if (self) {
		_cellArr = [NSMutableArray new];
		_headerHeight = headerH;
		_footerHeight = footerH;
		
		if ([headerCls isKindOfClass:[UITableViewHeaderFooterView class]]) {
			[self setValue:headerCls forKey:@"_headerCls"];
		}
		if ([footerCls isKindOfClass:[UITableViewHeaderFooterView class]]) {
			[self setValue:footerCls forKey:@"_footerCls"];
		}
		_headerTarget = headerT;
		_headerSEL = headerSEL;
		_footerTarget = footerT;
		_footerSEL = footerSEL;
	}
	return self;
}

//默认风格的header，不需要footer，不需要点击事件
+ (instancetype)sectionInfo {
	HTTableViewSectionInfo *sectionInfo = [[HTTableViewSectionInfo alloc] init];
	return sectionInfo;
}

//自定义的Header，不需要footer
+ (instancetype)sectionInfo:(Class)headerCls 
			   headerHeight:(CGFloat)headerH {
	HTTableViewSectionInfo *sectionInfo = [[HTTableViewSectionInfo alloc] init];
	sectionInfo.headerHeight = headerH;
	if ([headerCls isKindOfClass:[UITableViewHeaderFooterView class]]) {
		[sectionInfo setValue:headerCls forKey:@"_headerCls"];
	}
	return sectionInfo;
}

//自定义头部、带点击事件、不需要footer
+ (instancetype)sectionInfo:(Class)headerCls 
			   headerHeight:(CGFloat)headerH 
			   headerTarget:(id)target 
				  headerSEL:(SEL)headerSEL {
	HTTableViewSectionInfo *sectionInfo = [[HTTableViewSectionInfo alloc] init];
	sectionInfo.headerHeight = headerH;
	if ([headerCls isKindOfClass:[UITableViewHeaderFooterView class]]) {
		[sectionInfo setValue:headerCls forKey:@"_headerCls"];
	}
	sectionInfo.headerTarget = target;
	sectionInfo.headerSEL = headerSEL;
	return sectionInfo;
}

//完全自定义的头部、尾部
+ (instancetype)sectionInfo:(Class)headerCls 
			   headerHeight:(CGFloat)headerH
				footerClass:(Class)footerCls 
			   footerHeight:(CGFloat)footerH {
	HTTableViewSectionInfo *sectionInfo = [[HTTableViewSectionInfo alloc] init];
	sectionInfo.headerHeight = headerH;
	sectionInfo.footerHeight = footerH;
	if ([headerCls isKindOfClass:[UITableViewHeaderFooterView class]]) {
		[sectionInfo setValue:headerCls forKey:@"_headerCls"];
	}

	if ([footerCls isKindOfClass:[UITableViewHeaderFooterView class]]) {
		[sectionInfo setValue:footerCls forKey:@"_footerCls"];
	}
	return sectionInfo;
}

//完全自定义头部、尾部，且头部带有点击事件
+ (instancetype)sectionInfo:(Class)headerCls 
			   headerHeight:(CGFloat)headerH 
			   headerTarget:(id)headerT 
				  headerSEL:(SEL)headerSEL
				footerClass:(Class)footerCls 
			   footerHeight:(CGFloat)footerH {
	return [[HTTableViewSectionInfo alloc] initWithHeaderCls:headerCls headerHeight:headerH headerTarget:headerT headerSEL:headerSEL footerClass:footerCls footerHeight:footerH footerTarget:nil footerSEL:nil];
}

+ (instancetype)sectionInfo:(Class)headerCls 
			   headerHeight:(CGFloat)headerH 
			   headerTarget:(id)headerT 
				  headerSEL:(SEL)headerSEL
				footerClass:(Class)footerCls 
			   footerHeight:(CGFloat)footerH 
			   footerTarget:(id)footerT 
				  footerSEL:(SEL)footerSEL {
	
	return [[HTTableViewSectionInfo alloc] initWithHeaderCls:headerCls headerHeight:headerH headerTarget:headerT headerSEL:headerSEL footerClass:footerCls footerHeight:footerH footerTarget:footerT footerSEL:footerSEL];
}



- (NSUInteger)cellCount {
	return _cellArr.count;
}

- (HTTableViewCellInfo *)cellAt:(NSUInteger)index {
	if (index < _cellArr.count && index >= 0) {
		return _cellArr[index];
	}
	return nil;
}

- (void)removeCellAt:(NSUInteger)index {
	if (index < _cellArr.count && index >= 0) {
		return [_cellArr removeObjectAtIndex:index];
	}
}

- (void)insertCell:(HTTableViewCellInfo *)cell at:(NSUInteger)index {
	if (cell == nil) {
		return;
	}
	
	if (index < _cellArr.count && index >= 0) {
		[_cellArr insertObject:cell atIndex:index];
	}
}

- (void)addCell:(HTTableViewCellInfo *)cell {
	if (cell != nil) {
		[_cellArr addObject:cell];
	}
}










@end
