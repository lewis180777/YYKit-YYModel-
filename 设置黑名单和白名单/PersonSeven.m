//
//  PersonSeven.m
//  YYKit-YYModel学习
//
//  Created by mac on 16/3/19.
//  Copyright © 2016年 yxz. All rights reserved.
//

#import "PersonSeven.h"
#import "YYModel.h"

@implementation PersonSeven

/**
 *  设置黑名单,被设置的属性不会转换
 *
 */
+ (nullable NSArray<NSString *> *)modelPropertyBlacklist{
    return @[@"name"];
}

/**
 *  设置白名单
 *
 */
//+ (nullable NSArray<NSString *> *)modelPropertyWhitelist{
//    return @[@""];
//}

@end
