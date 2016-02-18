//
//  OrgTableViewController.h
//  MyMadison
//
//  Created by Paul Dippold on 9/10/15.
//  Copyright © 2015 Paul Dippold. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OrgTableViewController : UIViewController <UIWebViewDelegate,UITableViewDataSource,UITableViewDelegate>{
    NSMutableArray *organizations;
    NSMutableArray *organizationsdet;
    NSMutableArray *organizationsimage;
    NSMutableArray *organizationslink;

    IBOutlet UIWebView *web;
    BOOL done;
    BOOL done2;
    BOOL done3;
    BOOL done4;
    BOOL done5;
    BOOL done6;
    BOOL done7;
    BOOL done8;
    BOOL done9;
    BOOL done10;
    BOOL done11;
    BOOL done12;
    BOOL done13;
    BOOL done14;
    BOOL done15;
    BOOL done16;
    BOOL done17;
    BOOL done18;
    BOOL done19;
    BOOL done20;
    BOOL done21;
    BOOL done22;
    BOOL done23;
    BOOL done24;
    BOOL done25;
    BOOL done26;
    BOOL done27;
    BOOL done28;
    BOOL done29;
    BOOL done30;
    BOOL done31;
    BOOL done32;
    BOOL done33;
    BOOL done34;
    BOOL done35;
    BOOL done36;

    NSString *checkNum;
    NSTimer *myTimer;
    long rower;
    
    IBOutlet UITableView *tabler;
    
    IBOutlet UIImageView *dukedog;
    IBOutlet UIView *dogview;

}

@end
