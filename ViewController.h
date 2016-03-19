//
//  ViewController.h
//  YYKit-YYModel学习
//
//  Created by mac on 16/3/19.
//  Copyright © 2016年 yxz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@end

@interface Model : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) void (^operate)();

@end