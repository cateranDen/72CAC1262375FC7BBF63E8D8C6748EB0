//
//  AccountManager.h
//  Needer
//
//  Created by qianbosheng on 2017/9/29.
//  Copyright © 2017年 needer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "accountModel.h"
@interface AccountManager : NSObject


/**
 获取账户信息

 @return accountModel
 */
+ (accountModel *)account;

+ (void)saveAccount:(accountModel *)accountModel;

/**
 清除账户
 */
+ (void)clearAccount;

/**
 是否登录
 */
+ (BOOL)isLogin;

@end
