//
//  AccountManager.m
//  Needer
//
//  Created by qianbosheng on 2017/9/29.
//  Copyright © 2017年 needer. All rights reserved.
//

#import "AccountManager.h"

@implementation AccountManager

/**
 获取账户信息
 
 @return accountModel
 */
+ (accountModel *)account{
    return [NSKeyedUnarchiver unarchiveObjectWithFile:AccountSavePath];
}

+ (void)saveAccount:(accountModel *)accountModel{
    [NSKeyedArchiver archiveRootObject:accountModel toFile:AccountSavePath];
}

/**
 清除账户
 */
+ (void)clearAccount{
    [[NSFileManager defaultManager] removeItemAtPath:AccountSavePath error:nil];
}

/**
 是否登录
 */
+ (BOOL)isLogin{
    if ([[self class] account]) {
        return YES;
    }else{
        return NO;
    }
}


@end
