//
//  HTTableViewCellInfo.h
//  XXTabelViewDemo
//
//  Created by awen on 2018/8/10.
//  Copyright © 2018年 awen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface HTTableViewCellInfo : NSObject

//action、 target
@property (nonatomic, weak) Class actionTarget;
@property (nonatomic, assign) SEL cellSEL;

//用于重用cell
@property (nonatomic, copy, readonly) NSString *identifier;

@property (nonatomic, copy, readonly) Class cellClass;
@property (nonatomic, assign) CGFloat height;

+ (instancetype)cellInfoWithCellClass:(Class)cls 
							   target:(id)target 
							   action:(SEL)sel
						   cellHeight:(CGFloat)height;
//使用默认高度
+ (instancetype)cellInfoWithCellClass:(Class)cls 
							   target:(id)target 
							   action:(SEL)sel;

//不需要点击事件
+ (instancetype)cellInfoWithCellClass:(Class)cls
                           cellHeight:(CGFloat)height;

//不需要点击事件、使用默认高度
+ (instancetype)cellInfoWithCellClass:(Class)cls;



@end
