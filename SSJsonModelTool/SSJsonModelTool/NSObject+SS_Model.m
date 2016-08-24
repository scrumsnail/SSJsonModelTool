//
//  NSObject+SS_Model.m
//  SSJsonModelTool
//
//  Created by allthings_LuYD on 16/8/24.
//  Copyright © 2016年 scrum_snail. All rights reserved.
//

#import "NSObject+SS_Model.h"
#import <objc/runtime.h>
@implementation NSObject (SS_Model)

- (NSString *)ModelDescription
{
    NSDictionary * dic =[self ModelToDic];

    NSData * data = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:nil];

    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

- (NSDictionary *)ModelToDic
{
    NSMutableDictionary * dic = [[NSMutableDictionary alloc]init];

    NSArray * propertyNames = [self AllPropertyName];

    for (NSString * propertyName in propertyNames)
    {
        //变量值
        id propertyValue = [self         valueForKey:propertyName];

        [dic setValue:propertyValue forKey:propertyName];
    }

    return [dic copy];
}

- (void)JsonToModel:(NSDictionary *)dic
{
    NSArray * propertyNames = [self AllPropertyName];

    for (NSString * key in dic.allKeys){

        for (NSString * propertyName  in propertyNames)
        {
            if ([key isEqualToString:propertyName])
            {
                [self setValue:dic[key] forKey:propertyName];
            }
        }
    }
}

- (NSArray *)AllPropertyName
{
    NSMutableArray * propertyNames = [[NSMutableArray alloc]init];

    unsigned int outCount, i;
    //取出这个NSObject的类中的所有全局变量
    objc_property_t * properties = class_copyPropertyList([self class], &outCount);

    for (i = 0; i < outCount; i++) {
        objc_property_t property = properties[i];

        //变量名
        NSString *propertyName = [[NSString alloc] initWithCString:property_getName(property) encoding:NSUTF8StringEncoding] ;

        [propertyNames addObject:propertyName];
    }

    free(properties);

    return [propertyNames copy];
}
@end
