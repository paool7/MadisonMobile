//
//  OrgTableViewController.m
//  MyMadison
//
//  Created by Paul Dippold on 9/10/15.
//  Copyright © 2015 Paul Dippold. All rights reserved.
//

#import "OrgTableViewController.h"

@interface OrgTableViewController ()

@end

@implementation OrgTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    checkNum = 1;
    
    NSString *connect = [NSString stringWithContentsOfURL:[NSURL URLWithString:@"https://beinvolved.jmu.edu/organizations"] encoding:NSUTF8StringEncoding error:nil];
    
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
        organizations = [[NSMutableArray alloc] init];
        organizationsdet = [[NSMutableArray alloc] init];
        organizationsimage = [[NSMutableArray alloc] init];
        organizationslink = [[NSMutableArray alloc] init];
        
        [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=1"]]];
        [web setDelegate:self];
    }
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIAlertController *alert =   [UIAlertController
                                  alertControllerWithTitle:[organizations objectAtIndex:indexPath.row]
                                  message:[organizationsdet objectAtIndex:indexPath.row]
                                  preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* cancel = [UIAlertAction actionWithTitle:@"Done" style:UIAlertActionStyleCancel
                                                   handler:^(UIAlertAction * action) {
                                                       [alert dismissViewControllerAnimated:YES completion:nil];
                                                   }];
    UIAlertAction* visit = [UIAlertAction actionWithTitle:@"Visit Page" style:UIAlertActionStyleDefault
                                                   handler:^(UIAlertAction * action) {
                                                       [alert dismissViewControllerAnimated:YES completion:nil];
                                                       SFSafariViewController *safariVC = [[SFSafariViewController alloc]initWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",[organizationslink objectAtIndex:indexPath.row]]] entersReaderIfAvailable:NO];
                                                       safariVC.delegate = self;
                                                       [self presentViewController:safariVC animated:NO completion:nil];
                                                   }];
    [alert addAction:visit];
    [alert addAction:cancel];
    
    [self presentViewController:alert animated:YES completion:nil];
    
}


-(void)webViewDidStartLoad:(UIWebView *)webView{
    dukedog.animationImages = [NSArray arrayWithObjects:
                               [UIImage imageNamed:@"bull1.png"],
                               [UIImage imageNamed:@"bull2.png"], nil];
    [dukedog setAnimationRepeatCount:400];
    dukedog.animationDuration = 0.5;
    [dukedog startAnimating];
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    if ([[webView stringByEvaluatingJavaScriptFromString:@"document.readyState"] isEqualToString:@"complete"]) {
        NSLog(@"page: %i, count: %lu, num: %i",[[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]] intValue], (unsigned long)organizations.count, checkNum);

        if (checkNum <= 36) {
            [self performSelector:@selector(nextPage) withObject:nil];
        }
        if (checkNum == 4) {
            dukedog.hidden = YES;
            dogview.hidden = YES;
            [dukedog stopAnimating];
        }
    }
}



-(void)nextPage{
    for (int i = 0; i < 10; i++) {
        NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByClassName('result clearfix')[%d].getElementsByTagName('a')[0].textContent", i]];
        NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByClassName('result clearfix')[%d].getElementsByTagName('p')[0].textContent", i]];
        NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByClassName('result clearfix')[%d].getElementsByTagName('img')[0].src", i]];
        NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByClassName('result clearfix')[%d].getElementsByTagName('a')[0].href", i]];
        [organizationslink addObject:test4];
        [organizationsimage addObject:test3];
        [organizations addObject:test];
        [organizationsdet addObject:test2];
        
        [tabler reloadData];
    }
    if (checkNum < 36) {
        checkNum++;
        [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat: @"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=%i", checkNum]]]];
    }
    
}

- (UIViewController *)previewingContext:(id<UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location {
    
    NSIndexPath *indexPath = [tabler indexPathForRowAtPoint: location];
    
    preview = [organizationslink objectAtIndex:indexPath.row];
    
    SFSafariViewController *safariVC = [[SFSafariViewController alloc]initWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",[organizationslink objectAtIndex:indexPath.row]]] entersReaderIfAvailable:NO];
    return safariVC;
}

- (void)previewingContext:(id<UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit {
    SFSafariViewController *safariVC = [[SFSafariViewController alloc]initWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",preview]] entersReaderIfAvailable:NO];
    safariVC.delegate = self;
    [self presentViewController:safariVC animated:NO completion:nil];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return organizations.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    if (self.traitCollection.forceTouchCapability == UIForceTouchCapabilityAvailable) {
        [self registerForPreviewingWithDelegate:(id)self sourceView:cell];
    }
    
    cell.textLabel.text = [organizations objectAtIndex:indexPath.row];
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSURL * imageURL = [NSURL URLWithString:[NSString stringWithFormat:@"%@",[organizationsimage objectAtIndex:indexPath.row]]];
        NSData * imageData = [NSData dataWithContentsOfURL:imageURL];
        if (imageData) {
            UIImage * images = [UIImage imageWithData:imageData];
            if (images) {
                dispatch_async(dispatch_get_main_queue(), ^{
                    cell.imageView.image = images;
                });
            }
        } else {
            cell.imageView.image = [UIImage imageNamed:@"bull1"];
        }
    });
    
    return cell;
}



@end
