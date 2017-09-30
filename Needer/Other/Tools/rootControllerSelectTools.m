//
//  rootControllerSelectTools.m
//  Needer
//
//  Created by qianbosheng on 2017/9/29.
//  Copyright © 2017年 needer. All rights reserved.
//

#import "rootControllerSelectTools.h"
#import "RootTabbarController.h"
#import "startViewController.h"

@implementation rootControllerSelectTools
+ (void)selectRootViewController{
    NSString *key = (__bridge NSString *)kCFBundleVersionKey;
    //  当前版本
    NSString *currentVersion = [NSBundle mainBundle].infoDictionary[key];
    
    UIApplication *application = [UIApplication sharedApplication];
    UIWindow *window = [application keyWindow];
    
    NSUserDefaults *defults = [NSUserDefaults standardUserDefaults];
    NSString *sendBoxVersion = [defults stringForKey:key];
    if ([currentVersion compare:sendBoxVersion] == NSOrderedDescending) {
       
        [defults setObject:currentVersion forKey:key];
        [defults synchronize];
        
        // 新版本  显示新特性(如果有新特性的话)
        if ([AccountManager isLogin]) {
            window.rootViewController = [[RootTabbarController alloc] init];
        }else{
            window.rootViewController = [[startViewController alloc] init];
        }
        
    }else{
        // 旧版本  不显示新特性
        // 判断是否登录     没有登录显示登录页面
//        if ([AccountManager isLogin]) {
            window.rootViewController = [[RootTabbarController alloc] init];
//        }else{
//            window.rootViewController = [[startViewController alloc] init];
//        }
        
    }
    
    
    
    
}
@end
