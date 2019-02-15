//
//  NSMutableDictionary+EHICategory.h
//  TestAlipay
//
//  Created by dengwx on 2018/10/10.
//  Copyright © 2018年 dengwx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary (EHICategory)

// 链式语法部分

/** 设置键值对 */
- (NSMutableDictionary *(^)(id keyName,id object))ehiSetObject;

@end
