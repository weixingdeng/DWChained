//
//  UIButton+EHICategory.m
//  TestAlipay
//
//  Created by dengwx on 2018/10/24.
//  Copyright © 2018年 dengwx. All rights reserved.
//

#import "UIButton+EHICategory.h"

@implementation UIButton (EHICategory)

/** 标题 */
- (UIButton *(^)(NSString *, UIControlState))ehiTitle {
    return ^id (NSString *title,UIControlState state) {
        [self setTitle:title forState:state];
        return self;
    };
}

/** 标题字体 */
- (UIButton *(^)(UIFont *))ehiTitleFont {
    return ^id (UIFont *font) {
        self.titleLabel.font = font;
        return self;
    };
}

/** 标题颜色 */
- (UIButton *(^)(UIColor *, UIControlState))ehiTitleColor {
    return ^id (UIColor *color,UIControlState state) {
        [self setTitleColor:color forState:state];
        return self;
    };
}

/** 背景色 */
- (UIButton *(^)(UIColor *))ehiBackGroundColor {
    return ^id(UIColor *color) {
        [self setBackgroundColor:color];
        return self;
    };
}

/** 背景图片 */
- (UIButton *(^)(UIImage *, UIControlState))ehiBackImage {
    return ^id(UIImage *image,UIControlState state) {
        [self setBackgroundImage:image forState:state];
        return self;
    };
}

/** 设置图片 */
- (UIButton *(^)(UIImage *, UIControlState))ehiImage {
    return ^id(UIImage *image,UIControlState state) {
        [self setImage:image forState:state];
        return self;
    };
}

/** Layer边缘裁剪 */
- (UIButton *(^)(BOOL))ehiMaskToBounds {
    return ^id (BOOL maskToBounds) {
        self.layer.masksToBounds = maskToBounds;
        return self;
    };
}

/** 圆角度数(四个都是圆角) */
- (UIButton *(^)(CGFloat))ehiCornerRadius {
    return ^id (CGFloat cornerRadius) {
        self.layer.masksToBounds = YES;
        self.layer.cornerRadius = cornerRadius;
        return self;
    };
}

/** 指定圆角度数（需获取有效 Frame 后调用） */
- (UIButton *(^)(UIRectCorner, CGSize))ehiSpecialCornerRadius {
    return ^id (UIRectCorner rectCorner,CGSize cornerRadius) {
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
- (UIButton *(^)(CGFloat))ehiBorderWidth {
    return ^id (CGFloat borderWidth) {
        self.layer.borderWidth = borderWidth;
        return self;
    };
}

/** 边框线颜色 */
- (UIButton *(^)(UIColor *))ehiBorderColor {
    return ^id (UIColor *color) {
        self.layer.borderColor = color.CGColor;
        return self;
    };
}

/** 点击事件（TouchUpInside） */
- (UIButton *(^)(id, SEL))ehiTouchUpInside {
    return ^id (id observe,SEL selector) {
        [self addTarget:observe action:selector forControlEvents:UIControlEventTouchUpInside];
        return self;
    };
}

/** 点击事件（通用，指定状态） */
- (UIButton *(^)(id, SEL, UIControlEvents))ehiButtonAction {
    return ^id (id observe,SEL selector,UIControlEvents controlEvents) {
        [self addTarget:observe action:selector forControlEvents:controlEvents];
        return self;
    };
}

@end
