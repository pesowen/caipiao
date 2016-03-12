//
//  XMGTabBarController.m
//  caipiao
//
//  Created by Owen on 16/3/12.
//  Copyright © 2016年 Owen. All rights reserved.
//

#import "XMGTabBarController.h"
#import "XMGArenaViewController.h"
#import "XMGDiscoverViewController.h"
#import "XMGHallViewController.h"
#import "XMGHistoryViewController.h"
#import "XMGMyLotteryViewController.h"
@interface XMGTabBarController ()

@end

@implementation XMGTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    XMGHallViewController *hallVC = [[XMGHallViewController alloc]init];
    [self addOneChildVC:hallVC withBackgroundColor:[UIColor redColor] image:[UIImage imageNamed:@"TabBar_LotteryHall_new"] selectedImage:[UIImage imageNamed:@"TabBar_LotteryHall_selected_new"] title:@"购彩大厅"];
    
    XMGArenaViewController *arenaVC = [[XMGArenaViewController alloc]init];
    [self addOneChildVC:arenaVC withBackgroundColor:[UIColor greenColor] image:[UIImage imageNamed:@"TabBar_Arena_new"] selectedImage:[UIImage imageNamed:@"TabBar_Arena_selected_new"] title:@"竞技场"];
    
    XMGDiscoverViewController *discoverVC = [[XMGDiscoverViewController alloc]init];
    [self addOneChildVC:discoverVC withBackgroundColor:[UIColor blueColor] image:[UIImage imageNamed:@"TabBar_Discovery_new"] selectedImage:[UIImage imageNamed:@"TabBar_Discovery_selected_new"] title:@"发现"];
    
    XMGHistoryViewController *historyVC = [[XMGHistoryViewController alloc]init];
    [self addOneChildVC:historyVC withBackgroundColor:[UIColor redColor] image:[UIImage imageNamed:@"TabBar_History_new"] selectedImage:[UIImage imageNamed:@"TabBar_History_selected_new"] title:@"开奖信息"];
    
    XMGMyLotteryViewController *myLotteryVC = [[XMGMyLotteryViewController alloc]init];
    [self addOneChildVC:myLotteryVC withBackgroundColor:[UIColor greenColor] image:[UIImage imageNamed:@"TabBar_MyLottery_new"] selectedImage:[UIImage imageNamed:@"TabBar_MyLottery_selected_new"] title:@"我的彩票"];
    
}

- (void)addOneChildVC:(UIViewController *)vc withBackgroundColor:(UIColor *)color image:(UIImage *)image selectedImage:(UIImage *)selectedImage title:(NSString *)title{
    vc.view.backgroundColor = color;
    vc.tabBarItem.image = image;
    vc.tabBarItem.selectedImage = selectedImage;
    vc.tabBarItem.title = title;
    
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:vc];
    [self addChildViewController:nav];
}

@end
