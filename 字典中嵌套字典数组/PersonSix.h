//
//  PersonSix.h
//  YYKit-YYModel学习
//
//  Created by mac on 16/3/19.
//  Copyright © 2016年 yxz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BookSix.h"

@interface PersonSix : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *age;
@property (nonatomic, copy) NSString *weight;
@property (nonatomic, strong) NSArray<BookSix *> *books;//对应json中的books字典,如果数组中还是字典，则可以指明数组中包含的是什么模型的类型,可以用泛型,也可以不用泛型

@end
