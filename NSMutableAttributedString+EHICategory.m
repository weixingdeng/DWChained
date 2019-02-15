//
//  NSMutableAttributedString+EHICategory.m
//  TestAlipay
//
//  Created by dengwx on 2018/10/10.
//  Copyright © 2018年 dengwx. All rights reserved.
//

#import "NSMutableAttributedString+EHICategory.h"

@implementation NSMutableAttributedString (EHICategory)

/** 设置属性部分 */
- (NSMutableAttributedString *(^)(NSDictionary *, NSRange))ehiRangeAttributes {
    return ^ id (NSDictionary *attributes,NSRange range) {
        [self addAttributes:attributes range:range];
        return self;
    };
}

/** 设置属性部分（改变属性字符串 传入） */
- (NSMutableAttributedString *(^)(NSDictionary *, NSString *))ehiTextAttributes {
    return ^ id (NSDictionary *attributes,NSString *changeText) {
        if (self.string.length <= 0) {
            return self;
        }
        NSString *rangeString = changeText ? changeText : self.string;
        [self addAttributes:attributes range:[self.string rangeOfString:rangeString]];
        return self;
    };
}

/** 设置可变文字的颜色 */
- (NSMutableAttributedString *(^)(UIColor *, NSString *))ehiTextColorAttribute {
    return ^ id (UIColor *color , NSString *changeText) {
        if (self.string.length <= 0) {
            return self;
        }
        NSString *rangeString = changeText ? changeText : self.string;
        [self addAttribute:NSForegroundColorAttributeName value:color range:[self.string rangeOfString:rangeString]];
        return self;
    };
}

/** 设置可变字体 */
- (NSMutableAttributedString *(^)(UIFont *, NSString *))ehiFontAttribute {
    return ^ id (UIFont *font,NSString *changeText) {
        if (self.string.length <= 0) {
            return self;
        }
        NSString *rangeString = changeText ? changeText : self.string;
        [self addAttribute:NSFontAttributeName value:font range:[self.string rangeOfString:rangeString]];
        return self;
    };
}

/** 设置段落格式 */
- (NSMutableAttributedString *(^)(NSParagraphStyle *, NSString *))ehiParagraphStyle {
    return ^id (NSParagraphStyle *paragraphStyle,NSString *changeText) {
        if (self.string.length <= 0) {
            return self;
        }
        NSString *rangeString = changeText ? changeText : self.string;
        [self addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:[self.string rangeOfString:rangeString]];
        return self;
    };
}

@end
