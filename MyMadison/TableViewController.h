//
//  TableViewController.h
//  MyMadison
//
//  Created by Paul Dippold on 9/7/15.
//  Copyright © 2015 Paul Dippold. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>{
    NSMutableArray *diningArray;
    NSMutableArray *recreationArray;
    NSMutableArray *libraryArray;
    NSMutableArray *mailArray;
    
    NSMutableArray *diningArrayh;
    NSMutableArray *recreationArrayh;
    NSMutableArray *libraryArrayh;
    NSMutableArray *mailArrayh;

    NSMutableArray *diningArrayp;
    NSMutableArray *recreationArrayp;
    NSMutableArray *libraryArrayp;
    NSMutableArray *mailArrayp;

}

@end
