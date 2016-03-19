//
//  Person.h
//  YYKit-YYModel学习
//
//  Created by mac on 16/3/19.
//  Copyright © 2016年 yxz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Person : NSObject

@property (nonatomic, copy) NSString *name;//对应json字符串中的name
@property (nonatomic, copy) NSString *age;//对应json字符串中的age
@property (nonatomic, assign) CGFloat weight;//对应json字符串中的weight

@end
