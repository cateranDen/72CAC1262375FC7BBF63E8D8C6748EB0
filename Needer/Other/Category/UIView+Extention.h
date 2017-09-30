//
//  UIView+Extention.h
//  Asia
//
//  Created by qianbosheng on 2017/6/29.
//  Copyright © 2017年 Asia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Extention)

@property (nonatomic, assign) CGFloat x;

@property (nonatomic, assign) CGFloat y;

@property (nonatomic, assign) CGFloat centerX;

@property (nonatomic, assign) CGFloat centerY;

@property (nonatomic, assign) CGFloat left;

@property (nonatomic, assign) CGFloat right;

@property (nonatomic, assign) CGFloat width;

@property (nonatomic, assign) CGFloat height;

@property (nonatomic, assign) CGSize size;

@property (nonatomic, assign) CGPoint origin;

@property (nonatomic, assign) CGFloat tx;

@property (nonatomic, assign) CGFloat ty;
/*!
 *  添加轻点手势
 *
 *  @param target target
 *  @param action action
 */
- (void)addTapGestureTarget:(id)target action:(SEL)action;

/**
 添加滑动手势
 
 @param target target
 @param action action
 @param right  yes  右滑,  No  左滑
 */
- (void)addSwipeGestureTarget:(id)target action:(SEL)action right:(BOOL)right;
@end
