//
//  ViewController.m
//  MyMadison
//
//  Created by Paul Dippold on 8/30/15.
//  Copyright (c) 2015 Paul Dippold. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize user,pass,quest,sec,loggedin,reloaded, test;

#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
#define IS_RETINA ([[UIScreen mainScreen] scale] >= 2.0)

#define SCREEN_WIDTH ([[UIScreen mainScreen] bounds].size.width)
#define SCREEN_HEIGHT ([[UIScreen mainScreen] bounds].size.height)
#define SCREEN_MAX_LENGTH (MAX(SCREEN_WIDTH, SCREEN_HEIGHT))
#define SCREEN_MIN_LENGTH (MIN(SCREEN_WIDTH, SCREEN_HEIGHT))

#define IS_IPHONE_4_OR_LESS (IS_IPHONE && SCREEN_MAX_LENGTH < 568.0)
#define IS_IPHONE_5 (IS_IPHONE && SCREEN_MAX_LENGTH == 568.0)

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *connect = [NSString stringWithContentsOfURL:[NSURL URLWithString:@"https://login.jmu.edu"] encoding:NSUTF8StringEncoding error:nil];
    
    if (connect == NULL) {
        self.navigationItem.title = @"Login";
        UIAlertController *alert =   [UIAlertController
                                      alertControllerWithTitle:@"No Internet Connation"
                                      message:nil
                                      preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* cancel = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleCancel
                                                       handler:^(UIAlertAction * action) {
                                                           [alert dismissViewControllerAnimated:YES completion:nil];
                                                       }];
        [alert addAction:cancel];
        
        [self presentViewController:alert animated:YES completion:nil];
    } else{
    [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://login.jmu.edu"]]];
    [web setDelegate:self];
    self.user = YES;
    self.pass = NO;
    self.quest = NO;
    self.sec = NO;
    self.loggedin = NO;
    self.reloaded = NO;
    self.test = NO;
    }

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidShow:) name:UIKeyboardDidShowNotification object:nil];

    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(reload)
                                                 name:@"ViewControllerDismissed"
                                               object:nil];
    
    
}

-(void)viewDidAppear:(BOOL)animated{
    
}

-(void)reload{
    [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://login.jmu.edu"]]];
    self.reloaded = YES;
    self.user = YES;
    self.pass = NO;
    self.quest = NO;
    self.sec = NO;
    self.loggedin = NO;
    username.enabled = YES;
    usernamel.enabled = YES;
    questionl.enabled = NO;
    question.enabled = NO;
    password.enabled = NO;
    passwordl.enabled = NO;
    username.text = @"";
    password.text = @"";
    question.text = @"";
    security.image = nil;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)keyboardDidShow:(NSNotification *)notification {
    NSLog(@"%f", [notification.userInfo[UIKeyboardFrameEndUserInfoKey] CGRectValue].size.height);
    keyboard = [notification.userInfo[UIKeyboardFrameEndUserInfoKey] CGRectValue].size.height;
}

- (IBAction)next:(id)sender {
    if (user) {
        if ([username.text  isEqual: @"test"]) {
            self.user = NO;
            self.pass = YES;
            self.test = YES;
            username.enabled = NO;
            usernamel.enabled = NO;
            password.enabled = YES;
            passwordl.enabled = YES;
            [password becomeFirstResponder];
        } else{

        self.user = NO;
        self.pass = YES;
    [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('userid').value = '%@'", [username.text stringByReplacingOccurrencesOfString:@";" withString:@""]]];
    
    [web
     stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('loginButton')[0].click()"];
            
        }
    } else if (pass){
        
        if (test) {
            NSLog(@"%@", password.text);
            if ([password.text isEqual:@"password"]) {
            [self performSegueWithIdentifier: @"logintest" sender: self];
            if ([myTimer isValid]) {
                [myTimer invalidate];
            }
            } else{
                self.user = YES;
                self.pass = NO;
                self.test = NO;
                username.enabled = YES;
                usernamel.enabled = YES;
                password.enabled = NO;
                passwordl.enabled = NO;
                username.text = @"";
                password.text = @"";
                [username becomeFirstResponder];
                
                UIAlertController *alert =   [UIAlertController
                                              alertControllerWithTitle:@"Error"
                                              message:@"Sorry, the e-ID and password that you entered was not correct."
                                              preferredStyle:UIAlertControllerStyleAlert];
                
                UIAlertAction* cancel = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleCancel
                                                               handler:^(UIAlertAction * action) {
                                                                   [alert dismissViewControllerAnimated:YES completion:nil];
                                                               }];
                [alert addAction:cancel];
                
                [self presentViewController:alert animated:YES completion:nil];
                
            }
            
        }

        if (IS_IPHONE_4_OR_LESS) {
            [self.view setFrame:CGRectMake(0, -(keyboard/2),self.view.frame.size.width,self.view.frame.size.height)];
        } else if (IS_IPHONE_5){
            [self.view setFrame:CGRectMake(0, -(keyboard/8),self.view.frame.size.width,self.view.frame.size.height)];
        }
        
        self.pass = NO;
        self.quest = YES;
        [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('Bharosa_Password_PadDataField').value = '%@'", [password.text stringByReplacingOccurrencesOfString:@";" withString:@""]]];
        
        [web
         stringByEvaluatingJavaScriptFromString:@"Bharosa_Password_Pad.keyPress('ENTERKEY');"];
    } else if (sec){
        self.sec = NO;
        self.loggedin = YES;
        [self.view setFrame:CGRectMake(0,0,self.view.frame.size.width,self.view.frame.size.height)];

        [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('Bharosa_Challenge_PadDataField').value = '%@'", [question.text stringByReplacingOccurrencesOfString:@";" withString:@""]]];
        
        [web
         stringByEvaluatingJavaScriptFromString:@"Bharosa_Challenge_Pad.keyPress('ENTERKEY');"];
    }
    
    
}


- (void)webViewDidStartLoad:(UIWebView *)webView{
    myProgressView.progress = 0;
    theBool = false;
    //0.01667 is roughly 1/60, so it will update at 60 FPS
    myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01667 target:self selector:@selector(timerCallback) userInfo:nil repeats:YES];
}

-(void)timerCallback {
    if (theBool) {
        if (myProgressView.progress >= 1) {
            [myTimer invalidate];
        }
        else {
            myProgressView.progress += 0.1;
        }
    }
    else {
        myProgressView.progress += 0.05;
        if (myProgressView.progress >= 0.95) {
            myProgressView.progress = 0.95;
        }
    }
}




- (void)webViewDidFinishLoad:(UIWebView *)webView{
    theBool = true;

    NSString *error = [web stringByEvaluatingJavaScriptFromString:@"document.getElementById('errorMessage').textContent;"];

    if ([error  isEqual: @"Sorry, the e-ID and password that you entered was not correct. Please verify your information.  If this message persists, please try clicking the logout link and restarting your browser.  "]) {
        
        
        UIAlertController *alert =   [UIAlertController
                                      alertControllerWithTitle:@"Error"
                                      message:@"Sorry, the e-ID and password that you entered was not correct."
                                      preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* cancel = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleCancel
                                                       handler:^(UIAlertAction * action) {
                                                           [alert dismissViewControllerAnimated:YES completion:nil];
                                                       }];
        [alert addAction:cancel];
        
        [self presentViewController:alert animated:YES completion:nil];
        
        self.user = YES;
        self.pass = NO;
        self.quest = NO;
        self.sec = NO;
        self.loggedin = NO;
        username.enabled = YES;
        usernamel.enabled = YES;
        questionl.enabled = NO;
        question.enabled = NO;
        password.enabled = NO;
        passwordl.enabled = NO;
        username.text = @"";
        password.text = @"";
        question.text = @"";
        [self.view setFrame:CGRectMake(0,0,self.view.frame.size.width,self.view.frame.size.height)];
        [username becomeFirstResponder];
    } else if ([error isEqual:@"Incorrect answer. Please try again; or if you have registered a One Time Password Email/Text Address, you could try to login again using that challenge option."]){
        password.enabled = NO;
        passwordl.enabled = NO;
        question.enabled = YES;
        questionl.enabled = YES;
        self.quest = NO;
        self.sec = YES;
            [self.view setFrame:CGRectMake(0,0,self.view.frame.size.width,self.view.frame.size.height)];
        [question becomeFirstResponder];

        UIAlertController *alert =   [UIAlertController
                                      alertControllerWithTitle:@"Error"
                                      message:@"Incorrect answer. Please try again."
                                      preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* cancel = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleCancel
                                                       handler:^(UIAlertAction * action) {
                                                           [alert dismissViewControllerAnimated:YES completion:nil];
                                                       }];
        [alert addAction:cancel];
        
        [self presentViewController:alert animated:YES completion:nil];
    }else{
    if (user) {
        username.enabled = YES;
        usernamel.enabled = YES;
        if (reloaded) {
        } else{
        [username becomeFirstResponder];
        }
    } else if (pass){
         username.enabled = NO;
         usernamel.enabled = NO;
         password.enabled = YES;
         passwordl.enabled = YES;
         [password becomeFirstResponder];
    } else if (quest){
        password.enabled = NO;
        passwordl.enabled = NO;
        question.enabled = YES;
        questionl.enabled = YES;
        [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('kba').checked = true"]];
        self.quest = NO;
        self.sec = YES;
        [self performSelector:@selector(selected) withObject:nil afterDelay:0.1];
        [question becomeFirstResponder];
    } else if (sec){
       NSString *url = [web
         stringByEvaluatingJavaScriptFromString:@"document.getElementById('Bharosa_Challenge_PadPadImage').src;"];
        NSURL * imageURL = [NSURL URLWithString:url];
        NSData * imageData = [NSData dataWithContentsOfURL:imageURL];
        UIImage * imager = [UIImage imageWithData:imageData];
        security.image = imager;
    } else if (loggedin){
        self.loggedin = NO;
        [self performSegueWithIdentifier: @"login" sender: self];
        if ([myTimer isValid]) {
            [myTimer invalidate];
        }
    }
    }
    }
    
- (IBAction)userf:(id)sender {
    [username resignFirstResponder];
}
- (IBAction)passf:(id)sender {
    [password resignFirstResponder];
}
- (IBAction)questf:(id)sender {
    [question resignFirstResponder];
           [self.view setFrame:CGRectMake(0,0,self.view.frame.size.width,self.view.frame.size.height)];
}

-(void)selected{
    [web
     stringByEvaluatingJavaScriptFromString:@"document.getElementsByName('submit')[0].click()"];
}

@end
