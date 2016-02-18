//
//  MainViewController.h
//  MyMadison
//
//  Created by Paul Dippold on 9/3/15.
//  Copyright © 2015 Paul Dippold. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface MainViewController : UIViewController <UICollectionViewDataSource,UICollectionViewDelegate, UITableViewDataSource, UITableViewDelegate, UIWebViewDelegate, ADBannerViewDelegate>{
    NSMutableArray *array;
    NSMutableArray *array2;
    NSMutableArray *array3;
    NSMutableArray *array4;
    IBOutlet UICollectionView *collectv;
    NSString *phone;
    NSString *stringer;
    IBOutlet UIWebView *web;
    IBOutlet UIImageView *dukedog;

    
    BOOL theBool;
    IBOutlet UIProgressView* myProgressView;
    NSTimer *myTimer;
}

@end
