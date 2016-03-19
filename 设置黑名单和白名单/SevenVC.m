//
//  SevenVC.m
//  YYKit-YYModel学习
//
//  Created by mac on 16/3/19.
//  Copyright © 2016年 yxz. All rights reserved.
//

#import "SevenVC.h"
#import "YYModel.h"
#import "PersonSeven.h"

@interface SevenVC ()

@end

@implementation SevenVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self convertByDict:[self getDict]];
}

#pragma mark- 通过字段转换为模型
- (void) convertByDict:(NSDictionary *) dict{
    PersonSeven *person = [PersonSeven yy_modelWithDictionary:dict];
    NSLog(@"name=%@,age=%@,weight=%@",person.name,person.age,person.weight);
    
}

//获取base.json中的json字符串后转字典
- (NSDictionary *) getDict{
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"seven" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    id b_data = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    
    if ([b_data isKindOfClass:[NSDictionary class]]) {
        return b_data;
    }else{
        return nil;
    }
}

@end
