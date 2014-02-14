//
//  TestViewController.m
//  TestCall1
//
//  Created by 中島 浩二 on 2014/02/13.
//  Copyright (c) 2014年 中島 浩二. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController
@synthesize mText_Id;
@synthesize mUsername;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
 NSLog( @"viewDidLoad");
    NSUserDefaults *def= [NSUserDefaults standardUserDefaults];
    mUsername = [def stringForKey: CONST_KEY_USER_NAME];
    mText_Id.text= mUsername;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)click_test:(id)sender {
    
    NSString  *sTxt = mText_Id.text;
 NSLog(@"sTxt=%@", sTxt);
    
    NSUserDefaults *def= [NSUserDefaults standardUserDefaults];
    [def setObject: sTxt forKey: CONST_KEY_USER_NAME];
    [def synchronize];
    
    
 NSLog(@"click_test");
    BOOL installed = [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"skype:"]];
    if(installed)
    {
 NSLog(@"installed=OK");
        // NSString *surl = [NSString stringWithFormat:@"skype:%@?call" ,name];
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: [NSString stringWithFormat:@"skype:%@?call" ,sTxt] ] ];
    }
    else
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://itunes.com/apps/skype/skype"]];
    }
    
}

@end
