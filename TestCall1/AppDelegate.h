//
//  AppDelegate.h
//  TestCall1
//
//  Created by 中島 浩二 on 2014/02/13.
//  Copyright (c) 2014年 中島 浩二. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TestViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    TestViewController *viewController;
}

@property (strong, nonatomic) UIWindow *window;
@property (retain, nonatomic) TestViewController *viewController;
@property (nonatomic,retain) UINavigationController* rootController;

@end
