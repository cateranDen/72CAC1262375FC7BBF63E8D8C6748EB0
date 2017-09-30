//
//  UIView+Extention.m
//  Asia
//
//  Created by qianbosheng on 2017/6/29.
//  Copyright © 2017年 Asia. All rights reserved.
//

#import "UIView+Extention.h"

@implementation UIView (Extention)

- (void)setX:(CGFloat)x{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)x{
    return self.frame.origin.x;
}

- (void)setY:(CGFloat)y{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)y{
    return  self.frame.origin.y;
}

- (void)setCenterX:(CGFloat)centerX{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (CGFloat)centerX{
    return self.center.x;
}

- (void)setCenterY:(CGFloat)centerY{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

- (CGFloat)centerY{
    return self.center.y;
}

- (void)setLeft:(CGFloat)left{
    self.frame = CGRectMake(left, self.y, self.width, self.height);
}

- (CGFloat)left{
    return self.frame.origin.x;
}

- (void)setRight:(CGFloat)right{
    self.frame = CGRectMake(right-self.width, self.y, self.width, self.height);
}

- (CGFloat)right{
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setWidth:(CGFloat)width{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)width{
    return self.frame.size.width;
}

- (void)setHeight:(CGFloat)height{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)height{
    return  self.frame.size.height;
}

- (void)setSize:(CGSize)size{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGSize)size{
    return self.frame.size;
}

- (void)setOrigin:(CGPoint)origin{
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGPoint)origin{
    return self.frame.origin;
}

- (void)setTx:(CGFloat)tx{
    CGAffineTransform transform = self.transform;
    transform.tx = tx;
    self.transform = transform;
}

- (CGFloat)tx{
    return self.transform.tx;
}

- (void)setTy:(CGFloat)ty{
    CGAffineTransform transform = self.transform;
    transform.ty = ty;
    self.transform = transform;
}

- (CGFloat)ty{
    return self.transform.ty;
}

/*!
 *  添加轻点手势
 *
 *  @param target target
 *  @param action action
 */
- (void)addTapGestureTarget:(id)target action:(SEL)action{
    self.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:target action:action];
    [self addGestureRecognizer:tapGesture];
    
}

/**
 添加滑动手势
 
 @param target target
 @param action action
 @param right  yes  右滑,  No  左滑
 */
- (void)addSwipeGestureTarget:(id)target action:(SEL)action right:(BOOL)right{
    if (self.userInteractionEnabled == NO) {
        self.userInteractionEnabled = YES;
    }
    UISwipeGestureRecognizer *swipe = [[UISwipeGestureRecognizer alloc] initWithTarget:target action:action];
    if (right) {
        swipe.direction = UISwipeGestureRecognizerDirectionRight;
    }else{
        swipe.direction = UISwipeGestureRecognizerDirectionLeft;
    }
    [self addGestureRecognizer:swipe];
}
@end
