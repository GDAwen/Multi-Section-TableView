//
//  XXTableViewSectionInfo.h
//  XXTabelViewDemo
//
//  Created by awen on 2018/7/25.
//  Copyright © 2018年 awen. All rights reserved.
//

#import "XXTableViewUserInfo.h"
#import "XXTableViewCellInfo.h"


@interface XXTableViewSectionInfo : XXTableViewUserInfo

@property (nonatomic, assign) CGFloat headerHeight;
@property (nonatomic, assign) CGFloat footerHeight;
@property (nonatomic, assign) SEL footerAction;
@property (nonatomic, weak) id footerTarget;
@property (nonatomic, assign) SEL headerAction;
@property (nonatomic, weak) id headerTarget;






//供外界存储section信息
//默认section 不带header和footer
+ (XXTableViewSectionInfo *)sectionInfoDefault;
//默认风格的footer 传入title
+ (XXTableViewSectionInfo *)sectionInfoFooter:(NSString *)title;
//自定义的footerView
+ (XXTableViewSectionInfo *)sectionInfoFooterWithView:(UIView *)footerView;
//默认风格的headerView 传入title
+ (XXTableViewSectionInfo *)sectionInfoHeader:(NSString *)titile;
//自定义风格的headerView
+ (XXTableViewSectionInfo *)sectionInfoHeaderWithView:(UIView *)headerView;
//自定义的header和footer
+ (XXTableViewSectionInfo *)sectionInfoHeader:(NSString *)headerTitle footer:(NSString *)footerTitle;

//给header添加点击事件
+ (XXTableViewSectionInfo *)sectionInfoHeaderMakeSel:(SEL)action makeTarget:(id)target;
//给footer添加点击事件
+ (XXTableViewSectionInfo *)sectionInfoFooterMakeSel:(SEL)action makeTarget:(id)target;

//当前cell个数
- (NSUInteger)cellCount;
//获取cellInfo
- (XXTableViewCellInfo *)cellAt:(NSUInteger)index;
//删除cell
- (void)removeCellAt:(NSUInteger)index;
//插入cell
- (void)insertCell:(XXTableViewCellInfo *)cellInfo at:(NSUInteger)index;
//末尾追加cell
- (void)addCell:(XXTableViewCellInfo *)cellInfo;

- (UIView *)headerView;

- (UIView *)footerView;

@end
