//
//  PersonThird.h
//  YYKit-YYModel学习
//
//  Created by mac on 16/3/19.
//  Copyright © 2016年 yxz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PersonThird : NSObject

@property (nonatomic, copy) NSString *ID;//这个ID可以对应third.json中的id,也可以对应Three.json中的p_id
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *age;
@property (nonatomic, copy) NSString *weight;
@property (nonatomic, copy) NSString *desc;

@end
