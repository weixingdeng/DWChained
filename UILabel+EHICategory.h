//
//  UILabel+EHICategory.h
//  TestAlipay
//
//  Created by dengwx on 2018/10/10.
//  Copyright © 2018年 dengwx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (EHICategory)

// 链式语法

/** Label text 内容 */
- (UILabel *(^)(NSString *string))ehiText;
/** 富文本内容 */
- (UILabel *(^)(NSAttributedString *attributeString))ehiAttributeString;
/** Label 文字颜色 */
- (UILabel *(^)(UIColor *color))ehiTextColor;
/** 字体 */
- (UILabel *(^)(UIFont *font))ehiFont;
/** 字体尺寸 */
- (UILabel *(^)(CGFloat fontSize))ehiFontSize;
/** 文字对齐方式 */
- (UILabel *(^)(NSTextAlignment alignment))ehiTextAlignment;
/** 背景色 */
- (UILabel *(^)(UIColor *color))ehiBackGroundColor;
/** 换行模式 */
- (UILabel *(^)(NSLineBreakMode lineBreakMode))ehiLineBreakMode;
/** 行数 */
- (UILabel *(^)(NSInteger numOfLines))ehiNumOfLines;
/** Layer边缘裁剪 */
- (UILabel *(^)(BOOL maskToBounds))ehiMaskToBounds;
/** 圆角度数(四个都是圆角) */
- (UILabel *(^)(CGFloat cornerRadius))ehiCornerRadius;
/** 指定圆角度数（需获取有效 Frame 后调用） */
- (UILabel *(^)(UIRectCorner rectCorner,CGSize cornerRadius))ehiSpecialCorner;
/** 边框线宽度 */
- (UILabel *(^)(CGFloat lineWidth))ehiBorderWidth;
/** 边框线颜色 */
- (UILabel *(^)(UIColor *color))ehiBorderColor;
/** 最大换行宽度 */
- (UILabel *(^)(CGFloat preferredMaxLayoutWidth))ehiPreferredMaxLayoutWidth;



@end
