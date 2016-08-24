//
//  ViewController.m
//  SSJsonModelTool
//
//  Created by allthings_LuYD on 16/8/24.
//  Copyright © 2016年 scrum_snail. All rights reserved.
//

#import "ViewController.h"
#import "SS_Header.h"
#import "Dog.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self json];
    [self model];
}

- (void)model{
    NSDictionary *dic = @{
                          @"age"    : @15,
                          @"isMale" : @NO,
                          @"name"   : @"Bob"
                          };
    Dog *dog = [[Dog alloc] init];
    [dog JsonToModel:dic];
    NSLog(@"---字典转model:%@",dog);

    dog.name = @"lily";
    dog.isMale = YES;
    dog.age = 10;
    NSLog(@"---model转字典:%@",[dog ModelToDic]);
}

- (void)json{
    NSDictionary *dic = @{
                          @"name1"  : @"Bob1",
                          @"name2"  : @"Bob2",
                          @"name3"  : @"Bob3"
                          };
    NSString *jsonString = [SS_Json dictionaryToJson:dic];
    NSLog(@"%@",jsonString);

    NSDictionary *jsonDic = [SS_Json dictionaryWithJsonString:jsonString];
    NSLog(@"%@",jsonDic);


}
@end
