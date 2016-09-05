//
//  OrgTableViewController.h
//  MyMadison
//
//  Created by Paul Dippold on 9/10/15.
//  Copyright © 2015 Paul Dippold. All rights reserved.
//

#import <UIKit/UIKit.h>
@import SafariServices;

@interface OrgTableViewController : UIViewController <UIWebViewDelegate,UITableViewDataSource,UITableViewDelegate,SFSafariViewControllerDelegate>{
    NSMutableArray *organizations;
    NSMutableArray *organizationsdet;
    NSMutableArray *organizationsimage;
    NSMutableArray *organizationslink;

    IBOutlet UIWebView *web;
    NSTimer *timeout;
    
    NSString *preview;

    int checkNum;
    
    IBOutlet UITableView *tabler;
    
    IBOutlet UIImageView *dukedog;
    IBOutlet UIView *dogview;
}

@end
