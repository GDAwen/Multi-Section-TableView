//
//  XXTableViewCellInfo.h
//  XXTabelViewDemo
//
//  Created by awen on 2018/7/25.
//  Copyright © 2018年 awen. All rights reserved.
//

#import "XXTableViewUserInfo.h"
#import <UIKit/UIKit.h>


@interface XXTableViewCellInfo : XXTableViewUserInfo

@property (nonatomic, assign) CGFloat cellHeight;

//作为cell复用的identitfier
@property (nonatomic, copy) Class cellClass;
//实际对外暴露做事儿的接口
@property(nonatomic, assign) SEL actionSEL;
@property(nonatomic, weak) id actionTarget;
//Cell子View对外暴露的做事儿的接口
@property(nonatomic, assign) SEL makeSEL;
@property(nonatomic, weak) id makeTarget;


//一些工厂方法，用于快速创建cellInfo

+ (XXTableViewCellInfo *)cellInfo:(Class)cellClass actionSEL:(SEL)sel actionTarget:(id)target;


@end
