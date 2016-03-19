//
//  ThirdVC.m
//  YYKit-YYModel学习
//
//  Created by mac on 16/3/19.
//  Copyright © 2016年 yxz. All rights reserved.
//

#import "ThirdVC.h"
#import "PersonThird.h"
#import "YYModel.h"

@interface ThirdVC ()

@end

@implementation ThirdVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self convertByDict:[self getDictThird]];
    [self convertByDict:[self getDictThree]];
}

#pragma mark- 通过字段转换为模型
- (void) convertByDict:(NSDictionary *) dict{
    PersonThird *person = [PersonThird yy_modelWithDictionary:dict];
    NSLog(@"id=%@,name=%@,age=%@,weight=%@,desc=%@",person.ID,person.name,person.age,person.weight,person.desc);
}

//获取base.json中的json字符串后转字典
- (NSDictionary *) getDictThree{
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Three" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    id b_data = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    
    if ([b_data isKindOfClass:[NSDictionary class]]) {
        return b_data;
    }else{
        return nil;
    }
}

//获取base.json中的json字符串后转字典
- (NSDictionary *) getDictThird{
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Third" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    id b_data = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    
    if ([b_data isKindOfClass:[NSDictionary class]]) {
        return b_data;
    }else{
        return nil;
    }
}

@end
