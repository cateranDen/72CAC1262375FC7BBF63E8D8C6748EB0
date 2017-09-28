//
//  RootTabbarController.m
//  Needer
//
//  Created by qianbosheng on 2017/9/28.
//  Copyright © 2017年 needer. All rights reserved.
//

#import "RootTabbarController.h"
#import "mainViewController.h"
#import "IMViewController.h"
#import "circleViewController.h"
#import "findViewController.h"
#import "mineViewController.h"
#import "RootNavigationController.h"

@interface RootTabbarController ()

@end

@implementation RootTabbarController

- (instancetype)init{
    if (self = [super init]) {
        [self addChildViewController:[[mainViewController alloc] init]
                               title:@"首页"
                            imgaName:@"tabbar_main"
                     selectImageName:@"tabbar_main_s"];
        
        [self addChildViewController:[[IMViewController alloc] init]
                               title:@"聊天"
                            imgaName:@""
                     selectImageName:@""];
        
        [self addChildViewController:[[circleViewController alloc] init]
                               title:@"圈子"
                            imgaName:@""
                     selectImageName:@""];
        
        [self addChildViewController:[[findViewController alloc] init]
                               title:@"发现"
                            imgaName:@""
                     selectImageName:@""];
        
    }
    return self;
}

- (void)addChildViewController:(UIViewController *)childController
                         title:(NSString *)title
                      imgaName:(NSString *)imgName
               selectImageName:(NSString *)sImgName{
    childController.title = title;
    childController.tabBarItem.image         = [UIImage imageNamed:imgName];
    childController.tabBarItem.selectedImage = [[UIImage imageNamed:sImgName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    RootNavigationController *rootNav = [[RootNavigationController alloc] initWithRootViewController:childController];
    [self addChildViewController:rootNav];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

@end
