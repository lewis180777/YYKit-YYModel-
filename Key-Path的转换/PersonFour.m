//
//  PersonFour.m
//  YYKit-YYModel学习
//
//  Created by mac on 16/3/19.
//  Copyright © 2016年 yxz. All rights reserved.
//

#import "PersonFour.h"
#import "YYModel.h"

@implementation PersonFour

+ (nullable NSDictionary<NSString *, id> *)modelCustomPropertyMapper{
    return @{@"bookName":@"book.bookName"};
}

@end
