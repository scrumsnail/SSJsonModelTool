//
//  SS_Json.h
//  SSJsonModelTool
//
//  Created by allthings_LuYD on 16/8/24.
//  Copyright © 2016年 scrum_snail. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SS_Json : NSObject
/**
 *  method
 *
 *  @param dic 传进来的字典
 *
 *  @return json字符串
 */
+ (NSString *)dictionaryToJson:(NSDictionary *)dic;


/**
 *  method
 *
 *  @param jsonString 传进来的json字符串
 *
 *  @return 字典
 */
+ (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString;

@end
