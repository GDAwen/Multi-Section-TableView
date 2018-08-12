//
//  HTSectionModel.h
//  XXTabelViewDemo
//
//  Created by awen on 2018/8/10.
//  Copyright © 2018年 awen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HTSectionModel : NSObject
@property (nonatomic, copy) NSString *headerTitle;
@property (nonatomic, copy) NSString *footerTitle;

+ (instancetype)initWithHeaderTitle:(NSString *)headerTitle 
						footerTitle:(NSString *)footerTitle;

+ (instancetype)initWithHeaderTitle:(NSString *)headerTitle;

@end
