//
//  PersonThird.m
//  YYKit-YYModel学习
//
//  Created by mac on 16/3/19.
//  Copyright © 2016年 yxz. All rights reserved.
//

#import "PersonThird.h"
#import "YYModel.h"

@implementation PersonThird

+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper{
    return @{@"ID":@[@"id",@"p_id"],//指明ID可以接收多种字段名
             @"desc":@"description"};
}

@end
