//
//  Constant_color.h
//  Needer
//
//  Created by qianbosheng on 2017/9/29.
//  Copyright © 2017年 needer. All rights reserved.
//

#ifndef Constant_color_h
#define Constant_color_h

/**
 颜色
 
 @param rfbValue 色值
 
 @return RGB颜色
 */
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

/**
 随机色
 
 @return 随机颜色
 */
#define UIRandiomColor [UIColor colorWithRed:arc4random() % 256 / 256.0 green:arc4random() % 256 / 256.0 blue:arc4random() % 256 / 256.0 alpha:1.0]

/**
 带透明度的随机色
 
 @param a 透明度（alpha）
 
 @return 带透明度的随机色
 */
#define UIRandiomColorA(a) [UIColor colorWithRed:arc4random() % 256 / 256.0 green:arc4random() % 256 / 256.0 blue:arc4random() % 256 / 256.0 alpha:a];


/**
 RGB颜色+Alpha
 
 @param r red
 @param g green
 @param b blue
 @param a alpha
 
 @return RGB颜色+Alpha
 */
#define UIColor_RGBA(r,g,b,a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]


/**
 RGB颜色 + 1.0Alpha
 
 @param r red
 @param g green
 @param b blue
 
 @return RGB颜色 + 1.0Alpha
 */
#define UIColor_RGB(r,g,b) UIColor_RGBA(r,g,b,1.0f)



/**
 导航条背景颜色
 
 @return 背景色（导航条）
 */
#define color_Navigation_BG UIColorFromRGB(0x5a90f4)


/**
 导航栏文字颜色
 
 @return 文字颜色（导航栏文字：默认白）
 */
#define color_Navigation_TitleColor [UIColor whiteColor]


#endif /* Constant_color_h */
