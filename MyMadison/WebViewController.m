//
//  WebViewController.m
//  MyMadison
//
//  Created by Paul Dippold on 8/31/15.
//  Copyright (c) 2015 Paul Dippold. All rights reserved.
//

#import "WebViewController.h"
#import "ViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

@synthesize loaded,logout, po1, po2, initial;


- (void)viewDidLoad {
    [myTimer invalidate];
    [super viewDidLoad];
    
    NSString *connect = [NSString stringWithContentsOfURL:[NSURL URLWithString:@"https://info.jmu.edu/upb/events/"] encoding:NSUTF8StringEncoding error:nil];
    
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
    [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://mymadison.jmu.edu/psp/pprd/JMU/CUST/h/?tab=DEFAULT"]]];
    [web setDelegate:self];
    myTimer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(timerCallback) userInfo:nil repeats:YES];
    self.navigationItem.hidesBackButton = YES;
    self.loaded = NO;
    self.logout = NO;
    self.po1 = NO;
    self.po2 = NO;
    self.initial = YES;
    
    [status setText:@"Getting JACard Info..."];
    [self performSelector:@selector(checker1) withObject:nil afterDelay:30];

    }
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;

}

-(void) checker1{
    if (loaded) {
    } else{
    self.initial = YES;
        [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://mymadison.jmu.edu/psp/pprd/JMU/CUST/h/?tab=DEFAULT"]]];
    }
}

- (void)webViewDidStartLoad:(UIWebView *)webView{
    dukedog.animationImages = [NSArray arrayWithObjects:
                             [UIImage imageNamed:@"bull1.png"],
                             [UIImage imageNamed:@"bull2.png"], nil];
    [dukedog setAnimationRepeatCount:400];
    dukedog.animationDuration = 0.5;
    [dukedog startAnimating];
    myProgressView.progress = 0;
    theBool = false;

}

-(void)timerCallback {
    
    if (po2) {
    [pol setText:[NSString stringWithFormat:@"PO Box %@ Combination:",[web stringByEvaluatingJavaScriptFromString:@"document.getElementById('JCC_BOXCOMBO_VW_J_BOX_NBR').textContent"]]];
    [pol2 setText:[NSString stringWithFormat:@"Left: %@",[web stringByEvaluatingJavaScriptFromString:@"document.getElementById('JCC_BOXCOMBO_VW_J_LEFT').textContent"]]];
    [pol3 setText:[NSString stringWithFormat:@"Right: %@",[web stringByEvaluatingJavaScriptFromString:@"document.getElementById('JCC_BOXCOMBO_VW_J_RIGHT').textContent"]]];
    [pol4 setText:[NSString stringWithFormat:@"Left: %@",[web stringByEvaluatingJavaScriptFromString:@"document.getElementById('JCC_BOXCOMBO_VW_J_LEFT1').textContent"]]];
        
        NSLog(@"PO: %@",pol.text);

        if ([[web stringByEvaluatingJavaScriptFromString:@"document.getElementById('JCC_BOXCOMBO_VW_J_BOX_NBR').textContent"] rangeOfCharacterFromSet:[NSCharacterSet decimalDigitCharacterSet]].location != NSNotFound) {
            if ([myTimer isValid]) {
                [myTimer invalidate];
            }
        }
    }
    
    if (initial) {
    NSString *str = [web stringByEvaluatingJavaScriptFromString:@"document.getElementById('pop-9').textContent"];
    NSArray* words = [str componentsSeparatedByCharactersInSet :[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString* nospacestring = [words componentsJoinedByString:@" "];
    nospacestring = [nospacestring stringByReplacingOccurrencesOfString:@"Card Services" withString:@""];
    nospacestring = [nospacestring stringByReplacingOccurrencesOfString:@"Close" withString:@""];
    NSArray *arrayer = [nospacestring componentsSeparatedByString:@"Dining"];
    
    if ([arrayer count] == 2){
        NSArray *arrayer2 = [[arrayer objectAtIndex:1] componentsSeparatedByString:@"Remaining"];
        
        NSString *jac = [NSString stringWithFormat:@"%@ \n Dining%@ \n Remaining%@", [arrayer objectAtIndex:0], [arrayer2 objectAtIndex:0], [arrayer2 objectAtIndex:1]];
        [card setText:jac];
        
        
        self.loaded = YES;

        [status setText:@"Getting ID and Classes..."];
        [self performSelector:@selector(checker2) withObject:nil afterDelay:30];

        [web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('clickable_tile ui-link')[4].click()"];
        self.initial = NO;
        if ([myTimer isValid]) {
            [myTimer invalidate];
        }    }else{
    }
        NSLog(@"Card Services: %@", nospacestring);
    }
}

-(void)checker2{
    if (po1) {
    } else if (po2){
        
    }else{
        self.loaded = YES;
        [web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('clickable_tile ui-link')[4].click()"];
        self.initial = NO;
    }
}


- (void)webViewDidFinishLoad:(UIWebView *)webView{
    theBool = true;

    if (loaded) {
        classes = [web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc').length"];
        
        NSString *stu = [web stringByEvaluatingJavaScriptFromString:@"document.getElementById('DERIVED_SSS_SCL_TITLE1$19$').textContent"];
        stu = [stu stringByReplacingOccurrencesOfString:@"Paul's Student Center" withString:@""];
        stu = [stu stringByReplacingOccurrencesOfString:@"ID: " withString:@""];
        stu = [stu stringByReplacingOccurrencesOfString:@" " withString:@""];
        stu = [stu stringByReplacingOccurrencesOfString:@"  " withString:@""];
        stu = [stu stringByReplacingOccurrencesOfString:@"   " withString:@""];
        stu = [stu stringByReplacingOccurrencesOfString:@"    " withString:@""];
        stu = [stu stringByReplacingOccurrencesOfString:@"     " withString:@""];

        self.navigationItem.title = [NSString stringWithFormat:@"Student ID: %@", stu];
    
        
        classnum = classes.intValue/2;
        classlist = [[NSMutableArray alloc] init];
        daylist = [[NSMutableArray alloc] init];
        
        if (classnum == 1) {
            [classlist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[0].textContent"]];
            [daylist addObject:[[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[1].textContent"] stringByReplacingOccurrencesOfString:@"\n" withString:@""]];
        } else if (classnum == 2) {
            [classlist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[0].textContent"]];
            [daylist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[1].textContent"]];
            [classlist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[2].textContent"]];
            [daylist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[3].textContent"]];
        }else if (classnum == 3) {
            [classlist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[0].textContent"]];
            [daylist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[1].textContent"]];
            [classlist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[2].textContent"]];
            [daylist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[3].textContent"]];
            [classlist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[4].textContent"]];
            [daylist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[5].textContent"]];
        }else if (classnum == 4) {
            [classlist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[0].textContent"]];
            [daylist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[1].textContent"]];
            [classlist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[2].textContent"]];
            [daylist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[3].textContent"]];
            [classlist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[4].textContent"]];
            [daylist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[5].textContent"]];
            [classlist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[6].textContent"]];
            [daylist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[7].textContent"]];
        }else if (classnum == 5) {
            [classlist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[0].textContent"]];
            [daylist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[1].textContent"]];
            [classlist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[2].textContent"]];
            [daylist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[3].textContent"]];
            [classlist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[4].textContent"]];
            [daylist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[5].textContent"]];
            [classlist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[6].textContent"]];
            [daylist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[7].textContent"]];
            [classlist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[8].textContent"]];
            [daylist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[9].textContent"]];
        }else if (classnum == 6) {
            [classlist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[0].textContent"]];
            [daylist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[1].textContent"]];
            [classlist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[2].textContent"]];
            [daylist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[3].textContent"]];
            [classlist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[4].textContent"]];
            [daylist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[5].textContent"]];
            [classlist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[6].textContent"]];
            [daylist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[7].textContent"]];
            [classlist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[8].textContent"]];
            [daylist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[9].textContent"]];
            [classlist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[10].textContent"]];
            [daylist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[11].textContent"]];
        }else if (classnum == 7) {
            [classlist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[0].textContent"]];
            [daylist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[1].textContent"]];
            [classlist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[2].textContent"]];
            [daylist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[3].textContent"]];
            [classlist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[4].textContent"]];
            [daylist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[5].textContent"]];
            [classlist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[6].textContent"]];
            [daylist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[7].textContent"]];
            [classlist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[8].textContent"]];
            [daylist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[9].textContent"]];
            [classlist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[10].textContent"]];
            [daylist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[11].textContent"]];
            [classlist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[12].textContent"]];
            [daylist addObject:[web stringByEvaluatingJavaScriptFromString:@"document.getElementsByClassName('ui-li-desc')[13].textContent"]];
        }

        [table reloadData];
        self.loaded = NO;
    [self performSelector:@selector(checker3) withObject:nil afterDelay:30];
        
        [web stringByEvaluatingJavaScriptFromString:@"submitAction_win0(document.win0,'DERIVED_SSS_SCL_SSS_SC_ADDR_BOX2')"];
        self.po1 = YES;
    } else if (po1){
            myTimer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(timerCallback) userInfo:nil repeats:YES];
        [status setText:@"Getting PO Box Info..."];
        self.po1 = NO;
        self.po2 = YES;
        [web
         stringByEvaluatingJavaScriptFromString:@"submitAction_win0(document.win0,'J_DERIVED_CC_J_LINK_BOX_COMBO')"];
        viewer.hidden = YES;
        [dukedog stopAnimating];
    } else if (logout){
        if ([myTimer isValid]) {
            [myTimer invalidate];
        }
        [[NSNotificationCenter defaultCenter] postNotificationName:@"ViewControllerDismissed"
                                                            object:nil
                                                          userInfo:nil];
        [self.navigationController.presentingViewController dismissViewControllerAnimated:YES completion:nil];
    }

}

-(void)checker3{
    
    if ([[web stringByEvaluatingJavaScriptFromString:@"document.getElementById('JCC_BOXCOMBO_VW_J_BOX_NBR').textContent"] rangeOfCharacterFromSet:[NSCharacterSet decimalDigitCharacterSet]].location == NSNotFound) {
        self.loaded = NO;
        [web stringByEvaluatingJavaScriptFromString:@"submitAction_win0(document.win0,'DERIVED_SSS_SCL_SSS_SC_ADDR_BOX2')"];
        self.po1 = YES;
    }
}

- (IBAction)logout:(id)sender {
    if ([myTimer isValid]) {
        [myTimer invalidate];
    }
    [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://mymadison.jmu.edu/psp/pprd/JMU/HRMS/?cmd=logout&gsmobile=1"]]];
    self.logout = YES;


}

- (void)viewWillDisappear:(BOOL)animated
{
    if ([myTimer isValid]) {
        [myTimer invalidate];
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return classnum;
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = [classlist objectAtIndex:indexPath.row];
 
    cell.detailTextLabel.text = [daylist objectAtIndex:indexPath.row];
    
    cell.contentView.backgroundColor = [UIColor clearColor];
    cell.backgroundColor = [UIColor clearColor];
    tableView.backgroundColor = [UIColor clearColor];
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
