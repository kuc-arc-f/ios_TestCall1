//
//  TestViewController.h
//  TestCall1
//
//  Created by 中島 浩二 on 2014/02/13.
//  Copyright (c) 2014年 中島 浩二. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestViewController : UIViewController
{
    NSString *mUsername;

}

@property(retain, nonatomic) NSString *mUsername;

@property (retain, nonatomic) IBOutlet UIButton *mBtnTest;
@property (retain, nonatomic) IBOutlet UITextField *mText_Id;



- (IBAction)click_test:(id)sender;

@end
