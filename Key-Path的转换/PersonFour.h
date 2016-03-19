//
//  PersonFour.h
//  YYKit-YYModel学习
//
//  Created by mac on 16/3/19.
//  Copyright © 2016年 yxz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PersonFour : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *age;
@property (nonatomic, copy) NSString *weight;

@property (nonatomic, copy) NSString *bookName;//这个是嵌套字典中的一个字段，不想在新建一个类，则可以使用key-path的book.bookName形式取出这个字段作为PersonFour这个类的字段,需要在.m文件中指明

@end
