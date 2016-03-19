//
//  Person.m
//  YYKit-YYModel学习
//
//  Created by mac on 16/3/19.
//  Copyright © 2016年 yxz. All rights reserved.
//

#import "PersonSecond.h"
#import "YYModel.h"

@implementation PersonSecond

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"desc" : @"description",
             @"ID" :  @"id"};
}

@end
