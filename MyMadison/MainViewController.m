//
//  MainViewController.m
//  MyMadison
//
//  Created by Paul Dippold on 9/3/15.
//  Copyright © 2015 Paul Dippold. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if (self.traitCollection.forceTouchCapability == UIForceTouchCapabilityAvailable) {
        [self registerForPreviewingWithDelegate:(id)self sourceView:collectv];
    }
    
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    
    
    collectv.backgroundColor = [UIColor clearColor];
    collectv.backgroundView = [[UIView alloc] initWithFrame:CGRectZero];
    
    array = [[NSMutableArray alloc] init];
    array2 = [[NSMutableArray alloc] init];
    array3 = [[NSMutableArray alloc] init];
    array4 = [[NSMutableArray alloc] init];
    
    [array2 addObject:@"University Health Center"];
    [array2 addObject:@"JMU Campus Police"];
    [array2 addObject:@"CARE 24/7 Hotline"];
    [array2 addObject:@"Counseling Center"];
    
    [array2 addObject:@"Safety Escorts"];
    [array2 addObject:@"Safe Rides"];
    [array2 addObject:@"Office of Residence Life"];
    
    [array2 addObject:@"IT Help Desk"];
    [array2 addObject:@"Jimmy John's"];
    [array2 addObject:@"Campus Cookies"];
    
    
    [array3 addObject:@"(540)568-6178"];
    [array3 addObject:@"(540)442-6911"];
    [array3 addObject:@"(540)568-6411"];
    [array3 addObject:@"(540)568-6552"];
    
    [array3 addObject:@"(540)568-6913"];
    [array3 addObject:@"(540)568-7433"];
    [array3 addObject:@"(540)568-4663"];
    
    [array3 addObject:@"(540)568-3555"];
    [array3 addObject:@"(540)432-1100"];
    [array3 addObject:@"(540)658-2751"];
    
    
    NSString *connect = [NSString stringWithContentsOfURL:[NSURL URLWithString:@"https://info.jmu.edu/upb/events/"] encoding:NSUTF8StringEncoding error:nil];
    
    if (connect == NULL) {
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
        [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://info.jmu.edu/upb/events/"]]];
        [web setDelegate:self];
        
    }
    
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [array2 count];
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = [array2 objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = [array3 objectAtIndex:indexPath.row];
    
    cell.contentView.backgroundColor = [UIColor clearColor];
    cell.backgroundColor = [UIColor clearColor];
    tableView.backgroundColor = [UIColor clearColor];
    
    
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIAlertController *alert =   [UIAlertController
                                  alertControllerWithTitle:[NSString stringWithFormat:@"%@",[array2 objectAtIndex:indexPath.row]]
                                  message:[NSString stringWithFormat:@"%@",[array3 objectAtIndex:indexPath.row]]
                                  preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel
                                                   handler:^(UIAlertAction * action) {
                                                       [alert dismissViewControllerAnimated:YES completion:nil];
                                                   }];
    UIAlertAction* call = [UIAlertAction actionWithTitle:@"Call" style:UIAlertActionStyleDefault
                                                   handler:^(UIAlertAction * action) {
                                                       [alert dismissViewControllerAnimated:YES completion:nil];
                                                        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel://%@",[array3 objectAtIndex:indexPath.row]]]];
                                                   }];
    [alert addAction:cancel];
    [alert addAction:call];
    
    [self presentViewController:alert animated:YES completion:nil];
}



-(NSInteger )numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [array count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Celler" forIndexPath:indexPath];
    
    UIButton *button = (UIButton *)[cell viewWithTag:11];
    
    [button addTarget:self action:@selector(myClickEvent:event:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    UILabel *text = (UILabel *)[cell viewWithTag:10];
    [text setText:[array objectAtIndex:indexPath.row]];
    
    
    
    cell.layer.shouldRasterize = YES;
    cell.layer.rasterizationScale = [UIScreen mainScreen].scale;
    [cell.layer setBorderWidth:0.5f];
    [cell.layer setBorderColor:[UIColor blackColor].CGColor];
    [cell.layer setCornerRadius:5.0f];
    return cell;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)webViewDidStartLoad:(UIWebView *)webView{
    dukedog.animationImages = [NSArray arrayWithObjects:
                               [UIImage imageNamed:@"bull1.png"],
                               [UIImage imageNamed:@"bull2.png"], nil];
    [dukedog setAnimationRepeatCount:400];
    dukedog.animationDuration = 0.5;
    [dukedog startAnimating];
    myProgressView.progress = 0;        myProgressView.progress = 0;
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
    dukedog.hidden = YES;
    [dukedog stopAnimating];
    stringer = [web stringByEvaluatingJavaScriptFromString:@"document.getElementById('content').getElementsByTagName('p').length"];
    int w = [stringer intValue];
    
    if (array4.count == 0) {
        
        for (int i = 0; i < w; i++) {
            
            NSString *url = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('content').getElementsByTagName('a')[%d].getAttribute('href')" , i]];
            url = [url stringByReplacingOccurrencesOfString:@" " withString:@""];
            url = [url stringByReplacingOccurrencesOfString:@"\n" withString:@""];

            NSString *details = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('content').getElementsByTagName('p')[%d].innerText", i]];
            details = [details stringByReplacingOccurrencesOfString:@"\"" withString:@""];
            
            if ([details containsString:@"See more UPB events on the JMU calendar "]) {
                [array addObject:[NSString stringWithFormat:@"Calendar: \n %@",details]];
            } else{
                [array addObject:[NSString stringWithFormat:@"%@",details]];
            }
            
            [array4 addObject:url];
            
        }
        [collectv reloadData];
    }
}


- (IBAction)myClickEvent:(id)sender event:(id)event {
    NSSet *touches = [event allTouches];
    UITouch *touch = [touches anyObject];
    CGPoint currentTouchPosition = [touch locationInView:collectv];
    NSIndexPath *indexPath = [collectv indexPathForItemAtPoint: currentTouchPosition];
    
    SFSafariViewController *safariVC = [[SFSafariViewController alloc]initWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",[array4 objectAtIndex:indexPath.row]]] entersReaderIfAvailable:NO];
    safariVC.delegate = self;
    [self presentViewController:safariVC animated:NO completion:nil];
    
}


- (UIViewController *)previewingContext:(id<UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location {

    NSIndexPath *indexPath = [collectv indexPathForItemAtPoint: location];
    
    preview = [array4 objectAtIndex:indexPath.row];
    
    SFSafariViewController *safariVC = [[SFSafariViewController alloc]initWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",[array4 objectAtIndex:indexPath.row]]] entersReaderIfAvailable:NO];
    return safariVC;
}

- (void)previewingContext:(id<UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit {
    
    
    SFSafariViewController *safariVC = [[SFSafariViewController alloc]initWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",preview]] entersReaderIfAvailable:NO];
    safariVC.delegate = self;
    [self presentViewController:safariVC animated:NO completion:nil];
    
}



- (IBAction)info:(id)sender {
    
    UIAlertController *alert2 =   [UIAlertController
                                   alertControllerWithTitle:@"Info"
                                   message:@"Developed by Paul Dippold. \nIcons made by Icons8.com. "
                                   preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* cancel = [UIAlertAction actionWithTitle:@"Done" style:UIAlertActionStyleCancel
                                                    handler:^(UIAlertAction * action) {
                                                        [alert2 dismissViewControllerAnimated:YES completion:nil];
                                                    }];
    
    UIAlertAction* visitPaul = [UIAlertAction actionWithTitle:@"Visit Paul's Website" style:UIAlertActionStyleDefault
                                                    handler:^(UIAlertAction * action) {
                                                        [alert2 dismissViewControllerAnimated:YES completion:nil];
                                                        SFSafariViewController *safariVC = [[SFSafariViewController alloc]initWithURL:[NSURL URLWithString:@"http://paool.com"] entersReaderIfAvailable:NO];
                                                        safariVC.delegate = self;
                                                        [self presentViewController:safariVC animated:NO completion:nil];
                                                    }];
    
    UIAlertAction* visitIcons = [UIAlertAction actionWithTitle:@"Visit Icon8's Website" style:UIAlertActionStyleDefault
                                                    handler:^(UIAlertAction * action) {
                                                        [alert2 dismissViewControllerAnimated:YES completion:nil];
                                                        SFSafariViewController *safariVC = [[SFSafariViewController alloc]initWithURL:[NSURL URLWithString:@"http://icons8.com"] entersReaderIfAvailable:NO];
                                                        safariVC.delegate = self;
                                                        [self presentViewController:safariVC animated:NO completion:nil];
                                                    }];
    
    [alert2 addAction:cancel];
    [alert2 addAction:visitPaul];
    [alert2 addAction:visitIcons];

    
    [self presentViewController:alert2 animated:YES completion:nil];
    
    
}

@end
