//
//  XXTableViewUserInfo.h
//  XXTabelViewDemo
//
//  Created by awen on 2018/7/25.
//  Copyright © 2018年 awen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

extern NSString * const kSectionHeaderTitle;
extern NSString * const kSectionHeaderView;
extern NSString * const kSectionFooterTitle;
extern NSString * const kSectionFooterView;



@interface XXTableViewUserInfo : NSObject
@property (nonatomic, copy)NSDictionary *data; //供自定义cell使用


/*
    配合sectionInfo使用的UI信息
 */

- (void)addSectionHeaderTitle:(NSString *)title;
- (void)addSectionHeaderView:(UIView *)header;
- (void)addSectionFooterTitle:(NSString *)title;
- (void)addSectionFooterView:(UIView *)footer;

- (NSString *)sectionFooterTitle;
- (NSString *)sectionHeaderTitle;
- (UIView *)sectionHeaderView;
- (UIView *)sectionFooterView;

- (void)addUserInfoValue:(id)value key:(NSString *)key;
- (id)userInfoValueForKey:(NSString *)key;



@end
