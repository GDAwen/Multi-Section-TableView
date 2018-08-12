//
//  HTViewModel.h
//  XXTabelViewDemo
//
//  Created by Andrew on 2018/8/12.
//  Copyright © 2018年 awen. All rights reserved.
//

#import <Foundation/Foundation.h>

//这个地方定义一些protocol方法  Controller去调用
@protocol HTViewModelPotocol <NSObject>



@end




@interface HTViewModel : NSObject

- (instancetype)initWith:(id<HTViewModelPotocol>)protcol


@end

