//
//  UITableView+Reuse.m
//  XXTabelViewDemo
//
//  Created by awen on 2018/8/10.
//  Copyright © 2018年 awen. All rights reserved.
//

#import "UITableView+Reuse.h"

@implementation UITableView (Reuse)
//根据类的类型来注册cell，cell的reuseID 是类型名
- (void)registerCells:(NSArray <Class>*)identifieres {
    [identifieres enumerateObjectsUsingBlock:^(Class obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [self registerClass:obj forCellReuseIdentifier:NSStringFromClass(obj)];
    }];
}
//根据cellType来获取cell
- (UITableViewCell *)dequeueReusableCellWithClassType:(Class)cellType {
    return [self dequeueReusableCellWithIdentifier:NSStringFromClass(cellType)];
}

//注册重用的header、footer
- (void)registerSectionViews:(NSArray<Class> *)identifieres {
    [identifieres enumerateObjectsUsingBlock:^(Class obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [self registerClass:obj forHeaderFooterViewReuseIdentifier:NSStringFromClass(obj)];
    }];
}

//取sectionView
- (UITableViewHeaderFooterView *)dequeueReusableSectionViewWithClassType:(Class)classType {
    return [self dequeueReusableHeaderFooterViewWithIdentifier:NSStringFromClass(classType)];
}



@end
