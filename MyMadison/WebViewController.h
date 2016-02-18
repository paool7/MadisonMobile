//
//  WebViewController.h
//  MyMadison
//
//  Created by Paul Dippold on 8/31/15.
//  Copyright (c) 2015 Paul Dippold. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController <UIWebViewDelegate,UITableViewDelegate,UITableViewDataSource>{
    IBOutlet UIWebView *web;
    IBOutlet UIWebView *web2;
    IBOutlet UILabel *stuid;
    IBOutlet UILabel *pol;
    IBOutlet UILabel *pol2;
    IBOutlet UILabel *pol3;
    IBOutlet UILabel *pol4;
    IBOutlet UITextView *card;
    
    IBOutlet UIView *viewer;

    IBOutlet UITableView *table;
    
    NSMutableArray *classlist;
    NSMutableArray *daylist;
    
    NSString *classes;
    int classnum;
    
    BOOL theBool;
    IBOutlet UIProgressView* myProgressView;
    NSTimer *myTimer;
    
    IBOutlet UIImageView *dukedog;
    IBOutlet UILabel *status;

}
@property (nonatomic,assign) BOOL loaded;
@property (nonatomic,assign) BOOL logout;
@property (nonatomic,assign) BOOL po1;
@property (nonatomic,assign) BOOL po2;
@property (nonatomic,assign) BOOL initial;

@end
