//
//  RootNavigationController.m
//  Needer
//
//  Created by qianbosheng on 2017/9/28.
//  Copyright © 2017年 needer. All rights reserved.
//

#import "RootNavigationController.h"

@interface RootNavigationController ()

@end

@implementation RootNavigationController

+ (void)initialize{
    [self setupNavigationControllerTheme];
}

+ (void)setupNavigationControllerTheme{
    UINavigationBar *apperace = [UINavigationBar appearance];
    NSDictionary *textAttr = @{NSForegroundColorAttributeName:color_Navigation_TitleColor};
    apperace.tintColor = [UIColor whiteColor];
    apperace.titleTextAttributes = textAttr;
    apperace.barTintColor = color_Navigation_BG;
    
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImageName:@"nav_item_left" target:self action:@selector(backToViewController)];
    }
    [super pushViewController:viewController
                     animated:animated];
}

- (void)backToViewController{
    [self popViewControllerAnimated:YES];
}


@end
