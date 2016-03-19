//
//  PersonEight.m
//  YYKit-YYModel学习
//
//  Created by mac on 16/3/20.
//  Copyright © 2016年 yxz. All rights reserved.
//

#import "PersonEight.h"
#import "YYModel.h"

@implementation PersonEight

- (void)encodeWithCoder:(NSCoder *)aCoder { [self yy_modelEncodeWithCoder:aCoder]; }
- (id)initWithCoder:(NSCoder *)aDecoder { self = [super init]; return [self yy_modelInitWithCoder:aDecoder]; }
- (id)copyWithZone:(NSZone *)zone { return [self yy_modelCopy]; }
- (NSUInteger)hash { return [self yy_modelHash]; }
- (BOOL)isEqual:(id)object { return [self yy_modelIsEqual:object]; }
- (NSString *)description { return [self yy_modelDescription]; }

@end
