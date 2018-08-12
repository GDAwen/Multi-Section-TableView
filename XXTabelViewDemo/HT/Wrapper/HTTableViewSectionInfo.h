//
//  HTTableViewSectionInfo.h
//  XXTabelViewDemo
//
//  Created by awen on 2018/8/10.
//  Copyright © 2018年 awen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HTTableViewCellInfo.h"
#import "HTBaseSectionModel.h"

@interface HTTableViewSectionInfo : NSObject
@property (nonatomic, assign) CGFloat headerHeight;
@property (nonatomic, assign) CGFloat footerHeight;
@property (nonatomic, assign) SEL footerSEL;
@property (nonatomic, weak) id footerTarget;
@property (nonatomic, assign) SEL headerSEL;
@property (nonatomic, weak) id headerTarget;

//自定义的section头和section尾
@property (nonatomic, readonly, copy) Class headerCls;
@property (nonatomic, readonly, copy) Class footerCls;






//默认风格的header，不需要footer，不需要点击事件
+ (instancetype)sectionInfo;

//自定义的Header，不需要footer
+ (instancetype)sectionInfo:(Class)headerCls 
			   headerHeight:(CGFloat)headerH;

//自定义头部、带点击事件、不需要footer
+ (instancetype)sectionInfo:(Class)headerCls 
			   headerHeight:(CGFloat)headerH 
			   headerTarget:(id)target 
				  headerSEL:(SEL)headerSEL;

//完全自定义的头部、尾部
+ (instancetype)sectionInfo:(Class)headerCls 
			   headerHeight:(CGFloat)headerH
				footerClass:(Class)footerCls 
			   footerHeight:(CGFloat)footerH;

//完全自定义头部、尾部，且头部带有点击事件
+ (instancetype)sectionInfo:(Class)headerCls 
			   headerHeight:(CGFloat)headerH 
			   headerTarget:(id)headerT 
				  headerSEL:(SEL)headerSEL
				footerClass:(Class)footerCls 
			   footerHeight:(CGFloat)footerH;


+ (instancetype)sectionInfo:(Class)headerCls 
			   headerHeight:(CGFloat)headerH 
			   headerTarget:(id)headerT 
				  headerSEL:(SEL)headerSEL
				footerClass:(Class)footerCls 
			   footerHeight:(CGFloat)footerH 
			   footerTarget:(id)footerT 
				  footerSEL:(SEL)footerSEL;





#pragma mark -- api

- (NSUInteger)cellCount;

- (HTTableViewCellInfo *)cellAt:(NSUInteger)index;

- (void)removeCellAt:(NSUInteger)index;

- (void)insertCell:(HTTableViewCellInfo *)cell at:(NSUInteger)index;

- (void)addCell:(HTTableViewCellInfo *)cell;
@end
