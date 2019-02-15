//
//  UILabel+EHICategory.m
//  TestAlipay
//
//  Created by dengwx on 2018/10/10.
//  Copyright © 2018年 dengwx. All rights reserved.
//

#import "UILabel+EHICategory.h"

@implementation UILabel (EHICategory)

// 链式语法部分

/** Label text 内容 */
- (UILabel *(^)(NSString *))ehiText {
    return ^id (NSString *string) {
        self.text = [string copy];
        return self;
    };
}

/** 富文本内容 */
- (UILabel *(^)(NSAttributedString *))ehiAttributeString {
    return ^id (NSAttributedString *attributeString) {
        self.attributedText = attributeString;
        return self;
    };
}

/** Label 文字颜色 */
- (UILabel *(^)(UIColor *))ehiTextColor {
    return ^id (UIColor *color) {
        self.textColor = color;
        return self;
    };
}

/** 字体 */
- (UILabel *(^)(UIFont *))ehiFont {
    return ^id (UIFont *font) {
        self.font = font;
        return self;
    };
}

/** 字体尺寸 */
- (UILabel *(^)(CGFloat))ehiFontSize {
    return ^id (CGFloat fontSize) {
        self.font = [UIFont systemFontOfSize:fontSize];
        return self;
    };
}

/** 文字对齐方式 */
- (UILabel *(^)(NSTextAlignment))ehiTextAlignment {
    return ^id (NSTextAlignment alignment) {
        self.textAlignment = alignment;
        return self;
    };
}

/** 背景色 */
- (UILabel *(^)(UIColor *))ehiBackGroundColor {
    return ^id (UIColor *color) {
        self.backgroundColor = color;
        return self;
    };
}

/** 换行模式 */
- (UILabel *(^)(NSLineBreakMode))ehiLineBreakMode {
    return ^id (NSLineBreakMode lineBreakMode) {
        self.lineBreakMode = lineBreakMode;
        return self;
    };
}

/** 行数 */
- (UILabel *(^)(NSInteger))ehiNumOfLines {
    return ^id (NSInteger numOnLines) {
        self.numberOfLines = numOnLines;
        return self;
    };
}

/** Layer边缘裁剪 */
- (UILabel *(^)(BOOL))ehiMaskToBounds {
    return ^id (BOOL maskToBounds) {
        self.layer.masksToBounds = maskToBounds;
        return self;
    };
}

/** 圆角度数(四个都是圆角) */
- (UILabel *(^)(CGFloat))ehiCornerRadius {
    return ^id (CGFloat cornerRadius) {
        self.layer.masksToBounds = YES;
        self.layer.cornerRadius = cornerRadius;
        return self;
    };
}

/** 指定圆角度数（需获取有效 Frame 后调用） */
- (UILabel *(^)(UIRectCorner, CGSize))ehiSpecialCorner {
    return ^id (UIRectCorner rectCorner,CGSize cornerRadius) {
        NSLog(@"Bounds:%@",[NSValue valueWithCGRect:self.bounds]);
        NSLog(@"Frame:%@",[NSValue valueWithCGRect:self.frame]);
        UIBezierPath *bezierPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:rectCorner cornerRadii:cornerRadius];
        CAShapeLayer *myLayer = [[CAShapeLayer alloc] init];
        myLayer.frame = self.frame;
        myLayer.path = bezierPath.CGPath;
        myLayer.backgroundColor = [UIColor orangeColor].CGColor;
        self.layer.mask = myLayer;
        return self;
    };
}

/** 边框线宽度 */
- (UILabel *(^)(CGFloat))ehiBorderWidth {
    return ^id (CGFloat lineWidth) {
        self.layer.borderWidth = lineWidth;
        return self;
    };
}

/** 边框线颜色 */
- (UILabel *(^)(UIColor *))ehiBorderColor {
    return ^id (UIColor *color) {
        self.layer.borderColor = color.CGColor;
        return self;
    };
}

/** 最大换行宽度 */
- (UILabel *(^)(CGFloat))ehiPreferredMaxLayoutWidth {
    return ^id (CGFloat preferredMaxLayoutWidth) {
        self.preferredMaxLayoutWidth = preferredMaxLayoutWidth;
        return self;
    };
}

@end
