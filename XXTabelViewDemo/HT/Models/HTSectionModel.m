//
//  HTSectionModel.m
//  XXTabelViewDemo
//
//  Created by awen on 2018/8/10.
//  Copyright © 2018年 awen. All rights reserved.
//

#import "HTSectionModel.h"

@implementation HTSectionModel

+ (instancetype)initWithHeaderTitle:(NSString *)headerTitle footerTitle:(NSString *)footerTitle {
	HTSectionModel *model = [[HTSectionModel alloc] init];
	model.headerTitle = headerTitle;
	model.footerTitle = footerTitle;
	return model;
}

+ (instancetype)initWithHeaderTitle:(NSString *)headerTitle {
	HTSectionModel *model = [[HTSectionModel alloc] init];
	model.headerTitle = headerTitle;
	return model;
}

@end
