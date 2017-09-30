//
//  UIBarButtonItem+Extention.h
//  ZaiSuBao
//
//  Created by feijiu_1 on 16/4/30.
//  Copyright © 2016年 feijiu_01. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extention)

/*!
 *  设置一个带图片的 UIBarButtonItem
 *
 *  @param imgName 图片的名字
 *  @param target  target
 *  @param action  事件
 *
 *  @return UIBarButtonItem
 */
+ (UIBarButtonItem *)itemWithImageName:(NSString *)imgName target:(id)target action:(SEL)action;

/*!
 *  设置一个带 title 的UIBarButtonItem
 *
 *  @param title  title
 *  @param target target
 *  @param action 事件
 *
 *  @return UIBarButtonItem
 */
+ (UIBarButtonItem *)itemWithTitle:(NSString *)title target:(id)target action:(SEL)action;
@end
