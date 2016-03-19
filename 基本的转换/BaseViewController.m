//
//  BaseViewController.m
//  YYKit-YYModel学习
//
//  Created by mac on 16/3/19.
//  Copyright © 2016年 yxz. All rights reserved.
//

#import "BaseViewController.h"
#import "Person.h"
#import "YYModel.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self convertByJsonStr:[self getJsonStr]];
    [self convertByDict:[self getDict]];
    
}

#pragma mark- 通过字段转换为模型
- (void) convertByDict:(NSDictionary *) dict{
    Person *person = [Person yy_modelWithDictionary:dict];
    NSLog(@"name=%@,age=%@,weight=%.2f",person.name,person.age,person.weight);
}

#pragma mark- 通过json字符串转换模型
- (void) convertByJsonStr:(NSString *) jsonStr{
    Person *person = [Person yy_modelWithJSON:jsonStr];
    NSLog(@"name=%@,age=%@,weight=%.2f",person.name,person.age,person.weight);
}

//获取base.json中的json字符串
- (NSString *) getJsonStr{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"base" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    
    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

//获取base.json中的json字符串后转字典
- (NSDictionary *) getDict{
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"base" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    id b_data = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    
    if ([b_data isKindOfClass:[NSDictionary class]]) {
        return b_data;
    }else{
        return nil;
    }
}

@end
