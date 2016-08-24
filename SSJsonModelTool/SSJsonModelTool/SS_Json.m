//
//  SS_Json.m
//  SSJsonModelTool
//
//  Created by allthings_LuYD on 16/8/24.
//  Copyright © 2016年 scrum_snail. All rights reserved.
//

#import "SS_Json.h"

@implementation SS_Json

+ (NSString*)dictionaryToJson:(NSDictionary *)dic{

    NSError *parseError = nil;

    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:&parseError];

    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];

}


+ (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString {
    if (jsonString == nil) {
        return nil;
    }
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&err];
    if(err) {
        NSLog(@"json解析失败：%@",err);
        return nil;
    }
    return dic;
}


@end
