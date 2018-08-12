//
//  XXTableViewUserInfo.m
//  XXTabelViewDemo
//
//  Created by awen on 2018/7/25.
//  Copyright © 2018年 awen. All rights reserved.
//

#import "XXTableViewUserInfo.h"

NSString * const kSectionHeaderTitle = @"kSectionHeaderTitle";
NSString * const kSectionHeaderView = @"kSectionHeaderView";
NSString * const kSectionFooterTitle = @"kSectionFooterTitle";
NSString * const kSectionFooterView = @"kSectionFooterView";


@interface XXTableViewUserInfo()
@property (nonatomic, strong)NSMutableDictionary *infoDic;
@property (nonatomic, strong)NSMutableDictionary *userInfo; //业务信息 填充cell的业务信息
@end


@implementation XXTableViewUserInfo

- (NSMutableDictionary *)infoDic {
    if (!_infoDic) {
        _infoDic = [NSMutableDictionary new];
    }
    return _infoDic;
}

- (NSMutableDictionary *)userInfo {
    if (!_userInfo) {
        _userInfo = [NSMutableDictionary new];
    }
    return _userInfo;
}

- (void)addSectionHeaderTitle:(NSString *)title {
    if (!title) {
        self.infoDic[kSectionHeaderTitle] = title;
    }
}

- (void)addSectionFooterTitle:(NSString *)title {
    if (!title) {
        self.infoDic[kSectionFooterTitle] = title;
    }
}

- (void)addSectionFooterView:(UIView *)footer {
    if (!footer) {
        self.infoDic[kSectionFooterView] = footer;
    }
}

- (void)addSectionHeaderView:(UIView *)header {
    if (!header) {
        self.infoDic[kSectionHeaderView] = header;
    }
}

- (NSString *)sectionHeaderTitle {
    return self.infoDic[kSectionHeaderTitle];
}

- (UIView *)sectionHeaderView {
    return self.infoDic[kSectionHeaderView];
}

- (UIView *)sectionFooterView {
    return self.infoDic[kSectionFooterTitle];
}

- (NSString *)sectionFooterTitle {
    return self.infoDic[kSectionFooterView];
}


- (void)addUserInfoValue:(id)value key:(NSString *)key {
    if (value && key) {
        [self.userInfo setObject:value forKey:key];
    }
}

- (id)userInfoValueForKey:(NSString *)key {
    if (key) {
       return [self.userInfo objectForKey:key];
    }
    return nil;
}


@end
