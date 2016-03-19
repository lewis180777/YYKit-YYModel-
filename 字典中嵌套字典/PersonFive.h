//
//  PersonFive.h
//  YYKit-YYModel学习
//
//  Created by mac on 16/3/19.
//  Copyright © 2016年 yxz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BookFive.h"

@interface PersonFive : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *age;
@property (nonatomic, copy) NSString *weight;
@property (nonatomic, strong) BookFive *book;//对应json中的book字典

@end
