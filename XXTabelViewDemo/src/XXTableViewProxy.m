//
//  XXTableViewProxy.m
//  XXTabelViewDemo
//
//  Created by awen on 2018/7/25.
//  Copyright © 2018年 awen. All rights reserved.
//

#import "XXTableViewProxy.h"
#import "XXTableView.h"
#import "XXTableViewSectionInfo.h"
#import "XXTableViewCellInfo.h"
#import "XXTableViewCell.h"
#import "UITableView+Reuse.h"

@interface XXTableViewProxy()<UITableViewDelegate, UITableViewDataSource>
{
    XXTableView *_tableView;
    NSMutableArray *_arrSections;
}

@end



@implementation XXTableViewProxy

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    self = [super init];
    if (self) {
        _tableView = [[XXTableView alloc] initWithFrame:frame style:style];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _arrSections = [NSMutableArray new];
    }
    return self;
}

#pragma mark -- UITableViewDataSource & UITableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _arrSections.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    XXTableViewSectionInfo *sectionInfo = _arrSections[section];
    return [sectionInfo cellCount];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    XXTableViewSectionInfo *sectionInfo = _arrSections[indexPath.section];
    XXTableViewCellInfo *cellInfo = [sectionInfo cellAt:indexPath.row];
    return cellInfo.cellHeight;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    XXTableViewSectionInfo *sectionInfo = _arrSections[indexPath.section];
    XXTableViewCellInfo *cellInfo = [sectionInfo cellAt:indexPath.row];
    XXTableViewCell *cell = (XXTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"CELLID"];
    //配置cell的数据
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    XXTableViewSectionInfo *sectionInfo = _arrSections[section];
    return sectionInfo.footerHeight;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    XXTableViewSectionInfo *sectionInfo = _arrSections[section];
    return sectionInfo.headerHeight;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    XXTableViewSectionInfo *sectionInfo = _arrSections[section];
    return [sectionInfo sectionFooterTitle];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    XXTableViewSectionInfo *sectionInfo = _arrSections[section];
    return [sectionInfo sectionHeaderTitle];
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    XXTableViewSectionInfo *sectionInfo = _arrSections[section];
    return [sectionInfo sectionFooterView];
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    XXTableViewSectionInfo *sectionInfo = _arrSections[section];
    return [sectionInfo sectionHeaderView];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    XXTableViewSectionInfo *sectionInfo = _arrSections[indexPath.section];
    XXTableViewCellInfo *cellInfo = [sectionInfo cellAt:indexPath.row];
    
    id target = cellInfo.actionTarget;
    SEL selector = cellInfo.actionSEL;
    if ([target respondsToSelector:selector]) {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
        [target performSelector:selector withObject:cellInfo withObject:indexPath];
#pragma clang diagnostic pop
    }
}

#pragma mark -- public api

- (XXTableView *)getTableView {
    return _tableView;
}

- (NSInteger)getSectionCount {
    return _arrSections.count;
}




@end
