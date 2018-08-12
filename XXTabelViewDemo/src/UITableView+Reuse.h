//
//  UITableView+Reuse.h
//  XXTabelViewDemo
//
//  Created by awen on 2018/8/10.
//  Copyright © 2018年 awen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (Reuse)
//根据类的类型来注册cell，cell的reuseID 是类型名
- (void)registerCells:(NSArray <Class>*)identifieres;
//根据cellType来获取cell
- (UITableViewCell *)dequeueReusableCellWithClass:(Class)classType;
//注册重用的header、footer
- (void)registerSectionViews:(NSArray<Class> *)identifieres;
//取sectionView
- (UITableViewHeaderFooterView *)dequeueReusableSectionViewWithClassType:(Class)classType;

@end
