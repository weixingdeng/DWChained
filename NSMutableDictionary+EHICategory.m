//
//  NSMutableDictionary+EHICategory.m
//  TestAlipay
//
//  Created by dengwx on 2018/10/10.
//  Copyright © 2018年 dengwx. All rights reserved.
//

#import "NSMutableDictionary+EHICategory.h"

@implementation NSMutableDictionary (EHICategory)

/** 设置键值对 */
- (NSMutableDictionary *(^)(id, id))ehiSetObject {
    return ^id (id keyName,id object) {
        if (!object) {
            NSLog(@"存储对象为空");
            return self;
        }
        [self setObject:object forKey:keyName];
        return self;
    };
}

@end
