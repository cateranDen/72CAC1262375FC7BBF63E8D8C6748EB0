//
//  UIBarButtonItem+Extention.m
//  ZaiSuBao
//
//  Created by feijiu_1 on 16/4/30.
//  Copyright © 2016年 feijiu_01. All rights reserved.
//

#import "UIBarButtonItem+Extention.h"

@implementation UIBarButtonItem (Extention)

+ (UIBarButtonItem *)itemWithTitle:(NSString *)title target:(id)target action:(SEL)action
{
    return [[UIBarButtonItem alloc] initWithTitle:title
                                            style:UIBarButtonItemStylePlain
                                           target:target
                                           action:action];
}

+ (UIBarButtonItem *)itemWithImageName:(NSString *)imgName target:(id)target action:(SEL)action
{
    return [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:imgName]
                                            style:UIBarButtonItemStylePlain
                                           target:target
                                           action:action];
}



@end
