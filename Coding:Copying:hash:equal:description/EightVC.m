//
//  EightVC.m
//  YYKit-YYModel学习
//
//  Created by mac on 16/3/20.
//  Copyright © 2016年 yxz. All rights reserved.
//

#import "EightVC.h"
#import "PersonEight.h"

@interface EightVC ()

@end

@implementation EightVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    PersonEight *person = [[PersonEight alloc] init];
    person.name = @"lisi";
    person.age = 20;
    
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:person];
    PersonEight *p = (PersonEight *)[NSKeyedUnarchiver unarchiveObjectWithData:data];
    NSLog(@"name=%@,age=%zd",p.name,p.age);
}

@end
