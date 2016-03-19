//
//  PersonSix.m
//  YYKit-YYModel学习
//
//  Created by mac on 16/3/19.
//  Copyright © 2016年 yxz. All rights reserved.
//

#import "PersonSix.h"
#import "YYModel.h"

@implementation PersonSix

+ (nullable NSDictionary<NSString *, id> *)modelContainerPropertyGenericClass{
    return @{@"books":[BookSix class]};
}

@end
