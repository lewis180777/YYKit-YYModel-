//
//  ViewController.m
//  YYKit-YYModel学习
//
//  Created by mac on 16/3/19.
//  Copyright © 2016年 yxz. All rights reserved.
//

#import "ViewController.h"
#import "BaseViewController.h"
#import "SecondeVC.h"
#import "ThirdVC.h"
#import "FourVC.h"
#import "FiveVC.h"
#import "SixVC.h"
#import "SevenVC.h"
#import "EightVC.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, weak) UITableView *tableView;
@property (nonatomic, strong) NSArray *group;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
    _tableView = tableView;
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
}

- (NSArray *) group{
    if (!_group) {
        __weak typeof(self) b_self = self;
        Model *model1 = [[Model alloc] init];
        model1.name = @"基本的转换";
        model1.operate = ^{
            BaseViewController *vc = [[BaseViewController alloc] init];
            [b_self.navigationController pushViewController:vc animated:YES];
        };
        
        Model *model2 = [[Model alloc] init];
        model2.name = @"特殊字段的转换";
        model2.operate = ^{
            SecondeVC *vc = [[SecondeVC alloc] init];
            [b_self.navigationController pushViewController:vc animated:YES];
        };
        
        Model *model3 = [[Model alloc] init];
        model3.name = @"多个名字的字段转同一个字段";
        model3.operate = ^{
            ThirdVC *vc = [[ThirdVC alloc] init];
            [b_self.navigationController pushViewController:vc animated:YES];
        };
        
        Model *model4 = [[Model alloc] init];
        model4.name = @"Key-Path的转换";
        model4.operate = ^{
            FourVC *vc = [[FourVC alloc] init];
            [b_self.navigationController pushViewController:vc animated:YES];
        };
        
        Model *model5 = [[Model alloc] init];
        model5.name = @"字典中嵌套字典";
        model5.operate = ^{
            FiveVC *vc = [[FiveVC alloc] init];
            [b_self.navigationController pushViewController:vc animated:YES];
        };
        
        Model *model6 = [[Model alloc] init];
        model6.name = @"字典中嵌套字典数组";
        model6.operate = ^{
            SixVC *vc = [[SixVC alloc] init];
            [b_self.navigationController pushViewController:vc animated:YES];
        };
        
        Model *model7 = [[Model alloc] init];
        model7.name = @"设置黑名单和白名单";
        model7.operate = ^{
            SevenVC *vc = [[SevenVC alloc] init];
            [b_self.navigationController pushViewController:vc animated:YES];
        };
        
        Model *model8 = [[Model alloc] init];
        model8.name = @"Coding-Copying-hash-equal-description";
        model8.operate = ^{
            EightVC *vc = [[EightVC alloc] init];
            [b_self.navigationController pushViewController:vc animated:YES];
        };
        _group = @[model1,model2,model3,model4,model5,model6,model7,model8];
    }
    return _group;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.group.count;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    Model *model = self.group[indexPath.row];
    cell.textLabel.text = model.name;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    Model *model = self.group[indexPath.row];
    if (model.operate) {
        model.operate();
    }
}

@end

@implementation Model

@end
