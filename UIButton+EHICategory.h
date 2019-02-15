//
//  UIButton+EHICategory.h
//  TestAlipay
//
//  Created by dengwx on 2018/10/24.
//  Copyright © 2018年 dengwx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (EHICategory)

/** 标题 */
- (UIButton *(^)(NSString *title,UIControlState state))ehiTitle;
/** 标题字体 */
- (UIButton *(^)(UIFont *font))ehiTitleFont;
/** 标题颜色 */
- (UIButton *(^)(UIColor *color,UIControlState state))ehiTitleColor;
/** 背景色 */
- (UIButton *(^)(UIColor *color))ehiBackGroundColor;
/** 背景图片 */
- (UIButton *(^)(UIImage *image,UIControlState state))ehiBackImage;
/** 设置图片 */
- (UIButton *(^)(UIImage *image,UIControlState state))ehiImage;
/** Layer边缘裁剪 */
- (UIButton *(^)(BOOL maskToBounds))ehiMaskToBounds;
/** 圆角度数(四个都是圆角) */
- (UIButton *(^)(CGFloat cornerRadius))ehiCornerRadius;
/** 指定圆角度数（需获取有效 Frame 后调用） */
- (UIButton *(^)(UIRectCorner rectCorner,CGSize cornerRadius))ehiSpecialCornerRadius;
/** 边框线宽度 */
- (UIButton *(^)(CGFloat borderWidth))ehiBorderWidth;
/** 边框线颜色 */
- (UIButton *(^)(UIColor *color))ehiBorderColor;
/** 点击事件（TouchUpInside） */
- (UIButton *(^)(id observe,SEL selector))ehiTouchUpInside;
/** 点击事件（通用，指定状态） */
- (UIButton *(^)(id observe, SEL selector,UIControlEvents coutrolEvents))ehiButtonAction;

@end
