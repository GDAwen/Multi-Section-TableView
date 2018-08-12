//
//  XXTableViewSectionInfo.m
//  XXTabelViewDemo
//
//  Created by awen on 2018/7/25.
//  Copyright © 2018年 awen. All rights reserved.
//

#import "XXTableViewSectionInfo.h"

@interface XXTableViewSectionInfo()
{
    NSMutableArray *_arrCells;
}

@end


@implementation XXTableViewSectionInfo
- (instancetype)init {
    self = [super init];
    if (self) {
        _arrCells = [NSMutableArray new];
        _footerHeight = 0.01;
        _headerHeight = 15;
    }
    return self;
}

- (NSUInteger)cellCount {
    return _arrCells.count;
}

- (XXTableViewCellInfo *)cellAt:(NSUInteger)index {
    if (index < _arrCells.count) {
        return _arrCells[index];
    }
    return nil;
}

- (void)removeCellAt:(NSUInteger)index {
    if (index < _arrCells.count) {
        [_arrCells removeObjectAtIndex:index];
    }
}

- (void)insertCell:(XXTableViewCellInfo *)cellInfo at:(NSUInteger)index {
    if (cellInfo == nil || index > _arrCells.count) {
        return;
    }
    [_arrCells insertObject:cellInfo atIndex:index];
}

- (void)addCell:(XXTableViewCellInfo *)cellInfo {
    if (cellInfo == nil) {
        return;
    }
    [_arrCells addObject:cellInfo];
}

- (UIView *)headerView {
    return [self sectionHeaderView];
}

- (UIView *)footerView {
    return [self sectionFooterView];
}


+ (XXTableViewSectionInfo *)sectionInfoDefault {
    XXTableViewSectionInfo *sectionInfo = [[XXTableViewSectionInfo alloc] init];
    return sectionInfo;
}

+ (XXTableViewSectionInfo *)sectionInfoFooter:(NSString *)title {
    XXTableViewSectionInfo *sectionInfo = [[XXTableViewSectionInfo alloc] init];
    [sectionInfo addSectionFooterTitle:title];
    sectionInfo.footerHeight = 30;
    return sectionInfo;
}

+ (XXTableViewSectionInfo *)sectionInfoFooterWithView:(UIView *)footerView {
    XXTableViewSectionInfo *sectionInfo = [[XXTableViewSectionInfo alloc] init];
    [sectionInfo addSectionFooterView:footerView];
    sectionInfo.footerHeight = footerView.bounds.size.height;
    return sectionInfo;
}

+ (XXTableViewSectionInfo *)sectionInfoHeader:(NSString *)headerTitle footer:(NSString *)footerTitle {
    XXTableViewSectionInfo *sectionInfo = [[XXTableViewSectionInfo alloc] init];
    [sectionInfo addSectionFooterTitle:footerTitle];
    [sectionInfo addSectionFooterTitle:headerTitle];
    sectionInfo.footerHeight = 30;
    sectionInfo.headerHeight = 30;
    return sectionInfo;
}

+ (XXTableViewSectionInfo *)sectionInfoHeaderWithView:(UIView *)headerView {
    XXTableViewSectionInfo *sectionInfo = [[XXTableViewSectionInfo alloc] init];
    [sectionInfo addSectionHeaderView:headerView];
    sectionInfo.headerHeight = headerView.bounds.size.height;
    return sectionInfo;
}

+ (XXTableViewSectionInfo *)sectionInfoHeader:(NSString *)titile {
    XXTableViewSectionInfo *sectionInfo = [[XXTableViewSectionInfo alloc] init];
    [sectionInfo addSectionHeaderTitle:titile];
    sectionInfo.headerHeight = 30;
    return sectionInfo;
}

+ (XXTableViewSectionInfo *)sectionInfoFooterMakeSel:(SEL)action makeTarget:(id)target {
    XXTableViewSectionInfo *sectionInfo = [[XXTableViewSectionInfo alloc] init];
    sectionInfo.footerTarget = target;
    sectionInfo.footerAction = action;
    sectionInfo.footerHeight = 30;
    return sectionInfo;
}

+ (XXTableViewSectionInfo *)sectionInfoHeaderMakeSel:(SEL)action makeTarget:(id)target {
    XXTableViewSectionInfo *sectionInfo = [[XXTableViewSectionInfo alloc] init];
    sectionInfo.headerTarget = target;
    sectionInfo.headerAction = action;
    sectionInfo.headerHeight = 30;
    return sectionInfo;
}

@end
