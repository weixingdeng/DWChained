//
//  NSMutableAttributedString+EHICategory.h
//  TestAlipay
//
//  Created by dengwx on 2018/10/10.
//  Copyright © 2018年 dengwx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableAttributedString (EHICategory)

// 链式编程部分

/** 设置属性部分(range 传入) */
- (NSMutableAttributedString *(^)(NSDictionary *attributes,NSRange range))ehiRangeAttributes;
/** 设置属性部分（改变属性字符串 传入） */
- (NSMutableAttributedString *(^)(NSDictionary *attributes,NSString *changeText))ehiTextAttributes;
/** 设置可变文字的颜色 */
- (NSMutableAttributedString *(^)(UIColor *color,NSString *changeText))ehiTextColorAttribute;
/** 设置可变字体 */
- (NSMutableAttributedString *(^)(UIFont *font,NSString *changeText))ehiFontAttribute;
/** 设置段落格式 */
- (NSMutableAttributedString *(^)(NSParagraphStyle *paragraphStyle,NSString *changeText))ehiParagraphStyle;

@end
