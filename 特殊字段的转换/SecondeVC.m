//
//  SecondeVC.m
//  YYKit-YYModel学习
//
//  Created by mac on 16/3/19.
//  Copyright © 2016年 yxz. All rights reserved.
//  特殊字段：如id,description等，这些关键字的转换

#import "SecondeVC.h"
#import "PersonSecond.h"
#import "YYModel.h"

@interface SecondeVC ()

@end

@implementation SecondeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self convertByDict:[self getDict]];
}

#pragma mark- 通过字段转换为模型
- (void) convertByDict:(NSDictionary *) dict{
    PersonSecond *person = [PersonSecond yy_modelWithDictionary:dict];
    NSLog(@"id=%@,name=%@,age=%@,weight=%@,desc=%@",person.ID,person.name,person.age,person.weight,person.desc);
}

//获取base.json中的json字符串后转字典
- (NSDictionary *) getDict{
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Seconde" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    id b_data = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    
    if ([b_data isKindOfClass:[NSDictionary class]]) {
        return b_data;
    }else{
        return nil;
    }
}

@end
