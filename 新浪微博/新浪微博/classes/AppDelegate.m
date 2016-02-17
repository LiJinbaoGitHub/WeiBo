//
//  AppDelegate.m
//  新浪微博
//
//  Created by ma c on 16/2/16.
//  Copyright © 2016年 北京尚学堂. All rights reserved.
//

#import "AppDelegate.h"
#import "WBHomeViewController.h"
#import "WBMessageCenterViewController.h"
#import "WBDiscoverViewController.h"
#import "WBProfileViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

 - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //创建窗口
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    //设置根控制器
    UITabBarController * tabbarVC = [[UITabBarController alloc]init];
    self.window.rootViewController = tabbarVC;
     
    //设置子控制器
     WBHomeViewController * home = [[WBHomeViewController alloc]init];
     WBMessageCenterViewController * messageCenter = [WBMessageCenterViewController new];
     WBDiscoverViewController * discover = [WBDiscoverViewController new];
     WBProfileViewController * profile = [WBProfileViewController new];
     
     [self addChildVC:home Title:@"首页" imageName:@"tabbar_home" selectImageName:@"tabbar_home_selected"];
     
     [self addChildVC:messageCenter  Title:@"消息" imageName:@"tabbar_message_center" selectImageName:@"tabbar_message_center_selected"];
     
     [self addChildVC:discover  Title:@"发现" imageName:@"tabbar_discover" selectImageName:@"tabbar_discover_selected"];
     
     [self addChildVC:profile  Title:@"我" imageName:@"tabbar_profile" selectImageName:@"tabbar_profile_selected"];

     tabbarVC.viewControllers = @[home,messageCenter,discover,profile];
     
     //使窗口可见
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)addChildVC:(UIViewController *)childVC Title:(NSString *)title imageName:(NSString *)imageName selectImageName:(NSString *) selectImageName{
    
    //设置子控制器
  
    childVC.view.backgroundColor = WBRandomColor;
    childVC.tabBarItem.title = title;
    childVC.tabBarItem.image = [UIImage imageNamed:imageName];
    
    //设置文字样式
    //这张图片 按照原始图片 显示（不自动渲染 成 其他颜色）
    childVC.tabBarItem.selectedImage = [[UIImage imageNamed:selectImageName]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    NSMutableDictionary * textAttrs = [NSMutableDictionary dictionary];
    NSMutableDictionary * textAttrsSelected = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = WBColor(123, 123, 123);
    [childVC.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    [childVC .tabBarItem setTitleTextAttributes:textAttrsSelected forState:UIControlStateSelected];
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}
//     UIViewController * VC1 = [[UIViewController alloc]init];
//     VC1.view.backgroundColor = WBRandomColor;
//     VC1.tabBarItem.title = @"首页";
//     VC1.tabBarItem.image = [UIImage imageNamed:@"tabbar_home"];
//     //这张图片 按照原始图片 显示（不自动渲染 成 其他颜色）
//     VC1.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_home_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//     //设置文字样式
//     NSMutableDictionary * textAttrs = [NSMutableDictionary dictionary];
//     NSMutableDictionary * textAttrsSelected = [NSMutableDictionary dictionary];
//     textAttrs[NSForegroundColorAttributeName] = WBColor(123, 123, 123);
//     textAttrsSelected[NSForegroundColorAttributeName] = [UIColor orangeColor];
//     [VC1.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
//     [VC1.tabBarItem setTitleTextAttributes:textAttrsSelected forState:UIControlStateSelected];
//
//     UIViewController * VC2 = [ [UIViewController alloc]init];
//     VC2.view.backgroundColor = WBRandomColor;
//     VC2.tabBarItem.title = @"消息";
//     VC2.tabBarItem.image = [UIImage imageNamed:@"tabbar_message_center"];
//     VC2.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_message_center_selected"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//     [VC2.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
//     [VC2.tabBarItem setTitleTextAttributes:textAttrsSelected forState:UIControlStateSelected];
//
//     UIViewController * VC3 = [[UIViewController alloc]init];
//     VC3.view.backgroundColor = WBRandomColor;
//     VC3.tabBarItem.title = @"发现";
//     VC3.tabBarItem.image = [UIImage imageNamed:@"tabbar_discover"];
//     VC3.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_discover_selected"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//     [VC3.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
//     [VC3.tabBarItem setTitleTextAttributes:textAttrsSelected forState:UIControlStateSelected];
//
//     UIViewController * VC4 = [[UIViewController alloc]init];
//     VC4.view.backgroundColor = WBRandomColor;
//     VC4.tabBarItem.title = @"我 ";
//     VC4.tabBarItem.image = [UIImage imageNamed:@"tabbar_profile"];
//     VC4.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_profile_selected "]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//     [VC4.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
//     [VC4 .tabBarItem setTitleTextAttributes:textAttrsSelected forState:UIControlStateSelected];
//     [tabbarVC addChildViewController:VC1];
//     [tabbarVC addChildViewController:VC2];
//     [tabbarVC addChildViewController:VC3];
//     [tabbarVC addChildViewController:VC4];

@end
