//
//  ViewController.h
//  MyMadison
//
//  Created by Paul Dippold on 8/30/15.
//  Copyright (c) 2015 Paul Dippold. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIWebViewDelegate>{
    IBOutlet UITextField *username;
    IBOutlet UILabel *usernamel;
    IBOutlet UITextField *password;
    IBOutlet UILabel *passwordl;
    IBOutlet UITextField *question;
    IBOutlet UILabel *questionl;
    IBOutlet UIWebView *web;
    IBOutlet UIImageView *security;
    int *number;

    BOOL theBool;
    IBOutlet UIProgressView* myProgressView;
    NSTimer *myTimer;
    
    float keyboard;
}
- (IBAction)next:(id)sender;

@property (nonatomic, assign) BOOL user;
@property (nonatomic, assign) BOOL test;
@property (nonatomic,assign) BOOL pass;
@property (nonatomic,assign) BOOL quest;
@property (nonatomic,assign) BOOL sec;
@property (nonatomic,assign) BOOL loggedin;
@property (nonatomic,assign) BOOL reloaded;


@end

