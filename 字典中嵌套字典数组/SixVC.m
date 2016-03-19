//
//  SixVC.m
//  YYKit-YYModel学习
//
//  Created by mac on 16/3/19.
//  Copyright © 2016年 yxz. All rights reserved.
//

#import "SixVC.h"
#import "PersonSix.h"
#import "YYModel.h"

@interface SixVC ()

@end

@implementation SixVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self convertByDict:[self getDict]];
}

#pragma mark- 通过字段转换为模型
- (void) convertByDict:(NSDictionary *) dict{
    PersonSix *person = [PersonSix yy_modelWithDictionary:dict];
    NSLog(@"name=%@,age=%@,weight=%@",person.name,person.age,person.weight);
    for (BookSix *book in person.books) {
        NSLog(@"bookName=%@,price=%@",book.bookName,book.price);
    }
}

//获取base.json中的json字符串后转字典
- (NSDictionary *) getDict{
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"six" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    id b_data = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    
    if ([b_data isKindOfClass:[NSDictionary class]]) {
        return b_data;
    }else{
        return nil;
    }
}

@end
