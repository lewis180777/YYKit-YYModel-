//
//  Person.h
//  YYKit-YYModel学习
//
//  Created by mac on 16/3/19.
//  Copyright © 2016年 yxz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PersonSecond : NSObject

@property (nonatomic, copy) NSString *ID;//这里的ID对应json字符串中的id,需要在.m文件中说明,其实就是别名
@property (nonatomic, copy) NSString *name;//对应json字符串中的name
@property (nonatomic, copy) NSString *age;//对应json字符串中的age
@property (nonatomic, copy) NSString *weight;//对应json字符串中的weight
@property (nonatomic, copy) NSString *desc;//这里的desc对应json字符串中的description，需要在.m文件中说明

@end
