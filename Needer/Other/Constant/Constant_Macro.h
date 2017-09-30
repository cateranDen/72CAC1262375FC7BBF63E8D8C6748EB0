//
//  Constant_Macro.h
//  Needer
//
//  Created by qianbosheng on 2017/9/29.
//  Copyright © 2017年 needer. All rights reserved.
//

#ifndef Constant_Macro_h
#define Constant_Macro_h


#define kAppDelegate [[UIApplication sharedApplication] delegate]
#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
// 字体大小
#define MaxFont 15.0f
#define MidFont 13.0f
#define MinFont 11.0f
// 账户保存地址
#define AccountSavePath [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"account.data"]

// 强弱引用
#define QSWeakSelf(type)  __weak typeof(type) weak##type = type;
#define QSStrongSelf(type)  __strong typeof(type) type = weak##type;

// 手机型号
#define IS_IPHONE_4_OR_LESS (IS_IPHONE && SCREEN_MAX_LENGTH < 568.0)
#define IS_IPHONE_5 (IS_IPHONE && SCREEN_MAX_LENGTH == 568.0)
#define IS_IPHONE_6 (IS_IPHONE && SCREEN_MAX_LENGTH == 667.0)
#define IS_IPHONE_6P (IS_IPHONE && SCREEN_MAX_LENGTH == 736.0)





#endif /* Constant_Macro_h */
