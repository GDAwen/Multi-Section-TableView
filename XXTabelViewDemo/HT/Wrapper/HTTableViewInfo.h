//
//  HTTableViewInfo.h
//  XXTabelViewDemo
//
//  Created by awen on 2018/8/10.
//  Copyright © 2018年 awen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "HTTableViewCellInfo.h"
#import "HTTableViewSectionInfo.h"
#import "HTTableView.h"





@interface HTTableViewInfo : NSObject <UITableViewDelegate, UITableViewDataSource>


- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style;







@end
