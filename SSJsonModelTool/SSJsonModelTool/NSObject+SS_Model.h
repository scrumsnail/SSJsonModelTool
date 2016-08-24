//
//  NSObject+SS_Model.h
//  SSJsonModelTool
//
//  Created by allthings_LuYD on 16/8/24.
//  Copyright © 2016年 scrum_snail. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (SS_Model)

/**
 * @method
 * @abstract Model快速添加描述
 * @discussion 在Model的Description方法中返回该方法返回值
 * @result Description
 */
- (NSString *)ModelDescription;

/**
 * @method
 * @abstract 快速JsonToModel转换
 * @discussion 直接调用
 */
- (void)JsonToModel:(NSDictionary *)dic;

/**
 * @method
 * @abstract 快速ModelToJson转换
 * @discussion 直接调用
 */
- (NSDictionary *)ModelToDic;
@end
