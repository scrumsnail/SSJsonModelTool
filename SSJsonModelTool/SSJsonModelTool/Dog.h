//
//  Dog.h
//  SSJsonModelTool
//
//  Created by allthings_LuYD on 16/8/24.
//  Copyright © 2016年 scrum_snail. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dog : NSObject

/**             名字               **/
@property (nonatomic,copy) NSString *name;

/**             年龄               **/
@property (nonatomic,assign) NSInteger age;

/**             是公？               **/
@property (nonatomic,assign) BOOL isMale;


@end
