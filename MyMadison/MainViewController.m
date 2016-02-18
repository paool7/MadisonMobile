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


//http://stackoverflow.com/questions/19556336/how-do-you-add-an-in-app-purchase-to-an-ios-application
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
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
        self.navigationItem.title = @"Login";
        UIAlertView *alert3 = [[UIAlertView alloc] initWithTitle:@"Error"
                                                         message:@"No internet Connection"
                                                        delegate:self
                                               cancelButtonTitle:@"OK"
                                               otherButtonTitles:nil];
        [alert3 show];
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
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"%@",[array2 objectAtIndex:indexPath.row]] message:[NSString stringWithFormat:@"%@",[array3 objectAtIndex:indexPath.row]]  delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Call",nil];
    phone = [array3 objectAtIndex:indexPath.row];
    alert.alertViewStyle = UIAlertViewStyleDefault;
    [alert show];
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

for (int i = 0; i < w; i++) {

    NSString *url = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('content').getElementsByTagName('a')[%d].getAttribute('href')" , i]];
    url = [url stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    NSString *details = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('content').getElementsByTagName('p')[%d].innerText", i]];
    details = [details stringByReplacingOccurrencesOfString:@"\"" withString:@""];
    NSLog(@"%@",details);

    if ([url isEqual:@"http://jmu.edu/calendar"]) {
        [array addObject:[NSString stringWithFormat:@"Calendar: \n %@",details]];
        [array4 addObject:url];

    } else{
        [array addObject:[NSString stringWithFormat:@"%@",details]];
        [array4 addObject:url];
    }

}
    [collectv reloadData];
}


- (IBAction)myClickEvent:(id)sender event:(id)event {
    
    NSSet *touches = [event allTouches];
    
    UITouch *touch = [touches anyObject];
    
    CGPoint currentTouchPosition = [touch locationInView:collectv];
    
    NSIndexPath *indexPath = [collectv indexPathForItemAtPoint: currentTouchPosition];
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",[array4 objectAtIndex:indexPath.row]]]];
}


- (IBAction)info:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Info" message:@"Developed by Paul Dippold. \nIcons made by Icons8.com. "  delegate:self cancelButtonTitle:@"Done" otherButtonTitles:@"Visit Paul's Website",@"Visit Icon8's Website",nil];
    alert.alertViewStyle = UIAlertViewStyleDefault;
    [alert show];
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if ([alertView.title isEqual:@"Info"]) {
        if (buttonIndex == 1) {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://paool.com"]];
        } else if (buttonIndex == 2) {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://icons8.com"]];
        }
    }else{
    if (buttonIndex == 1) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel://%@",phone]]];
    }
    }
}

- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
    NSLog(@"Failed to retrieve ad, because: %@", error);
}

@end
