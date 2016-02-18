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
    
    
    NSString *connect = [NSString stringWithContentsOfURL:[NSURL URLWithString:@"https://beinvolved.jmu.edu/organizations"] encoding:NSUTF8StringEncoding error:nil];
    
    if (connect == NULL) {
        self.navigationItem.title = @"Login";
        UIAlertView *alert3 = [[UIAlertView alloc] initWithTitle:@"Error"
                                                         message:@"No internet Connection"
                                                        delegate:self
                                               cancelButtonTitle:@"OK"
                                               otherButtonTitles:nil];
        [alert3 show];
    } else{
    organizations = [[NSMutableArray alloc] init];
    organizationsdet = [[NSMutableArray alloc] init];
    organizationsimage = [[NSMutableArray alloc] init];
    organizationslink = [[NSMutableArray alloc] init];

    [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://beinvolved.jmu.edu/organizations"]]];
    [web setDelegate:self];
    done = YES;
    done2 = NO;
    done3 = NO;
    done4 = NO;
    done5 = NO;
    done6 = NO;
    done7 = NO;
    done8 = NO;
    done9 = NO;
    done10 = NO;
    done11 = NO;
    done12 = NO;
    done13 = NO;
    done14 = NO;
    done15 = NO;
    done16 = NO;
    done17 = NO;
    done18 = NO;
    done19 = NO;
    done20 = NO;
    done21 = NO;
    done22 = NO;
    done23 = NO;
    done24 = NO;
    done25 = NO;
    done26 = NO;
    done27 = NO;
    done28 = NO;
    done29 = NO;
    done30 = NO;
    done31 = NO;
    done32 = NO;
    done33 = NO;
    done34 = NO;
    done35 = NO;
    }
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    rower = indexPath.row;
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[organizations objectAtIndex:indexPath.row] message:[organizationsdet objectAtIndex:indexPath.row]  delegate:self cancelButtonTitle:@"Done" otherButtonTitles:@"Visit Page",nil];
        alert.alertViewStyle = UIAlertViewStyleDefault;
        [alert show];
    
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
        if (buttonIndex == 1) {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",[organizationslink objectAtIndex:rower]]]];
        }
    
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
    
    if (done) {
        [self performSelector:@selector(page1) withObject:nil];
        done = NO;
    } else if (done2){
        [self performSelector:@selector(page2) withObject:nil];
        done2 = NO;
    }else if (done3){
        dukedog.hidden = YES;
        dogview.hidden = YES;
        [dukedog stopAnimating];
        [self performSelector:@selector(page3) withObject:nil];
        done3 = NO;
    }else if (done4){
        [self performSelector:@selector(page4) withObject:nil];
        done4 = NO;
    }else if (done5){
        [self performSelector:@selector(page5) withObject:nil];
        done5 = NO;
    }else if (done6){
        [self performSelector:@selector(page6) withObject:nil];
        done6 = NO;
    }else if (done7){
        [self performSelector:@selector(page7) withObject:nil];
        done7 = NO;
    }else if (done8){
        [self performSelector:@selector(page8) withObject:nil];
        done8 = NO;
    }else if (done9){
        [self performSelector:@selector(page9) withObject:nil];
        done9 = NO;
    }else if (done10){
        [self performSelector:@selector(page10) withObject:nil];
        done10 = NO;
    }else if (done11){
        [self performSelector:@selector(page11) withObject:nil];
        done11 = NO;
    }else if (done12){
        [self performSelector:@selector(page12) withObject:nil];
        done12 = NO;
    }else if (done13){
        [self performSelector:@selector(page13) withObject:nil];
        done13 = NO;
    }else if (done14){
        [self performSelector:@selector(page14) withObject:nil];
        done14 = NO;
    }else if (done15){
        [self performSelector:@selector(page15) withObject:nil];
        done15 = NO;
    }else if (done16){
        [self performSelector:@selector(page16) withObject:nil];
        done16 = NO;
    }else if (done17){
        [self performSelector:@selector(page17) withObject:nil];
        done17 = NO;
    }else if (done18){
        [self performSelector:@selector(page18) withObject:nil];
        done18 = NO;
    }else if (done19){
        [self performSelector:@selector(page19) withObject:nil];
        done19 = NO;
    }else if (done20){
        [self performSelector:@selector(page20) withObject:nil];
        done20 = NO;
    }else if (done21){
        [self performSelector:@selector(page21) withObject:nil];
        done21 = NO;
    }else if (done22){
        [self performSelector:@selector(page22) withObject:nil];
        done22 = NO;
    }else if (done23){
        [self performSelector:@selector(page23) withObject:nil];
        done23 = NO;
    }else if (done24){
        [self performSelector:@selector(page24) withObject:nil];
        done24 = NO;
    }else if (done25){
        [self performSelector:@selector(page25) withObject:nil];
        done25 = NO;
    }else if (done26){
        [self performSelector:@selector(page26) withObject:nil];
        done26 = NO;
    }else if (done27){
        [self performSelector:@selector(page27) withObject:nil];
        done27 = NO;
    }else if (done28){
        [self performSelector:@selector(page28) withObject:nil];
        done28 = NO;
    }else if (done29){
        [self performSelector:@selector(page29) withObject:nil];
        done29 = NO;
    }else if (done30){
        [self performSelector:@selector(page30) withObject:nil];
        done30 = NO;
    }else if (done31){
        [self performSelector:@selector(page31) withObject:nil];
        done31 = NO;
    }else if (done32){
        [self performSelector:@selector(page32) withObject:nil];
        done32 = NO;
    }else if (done33){
        [self performSelector:@selector(page33) withObject:nil];
        done33 = NO;
    }else if (done34){
        [self performSelector:@selector(page34) withObject:nil];
        done34 = NO;
    }else if (done35){
        [self performSelector:@selector(page35) withObject:nil];
        done35 = NO;
    }else if (done36){
        [self performSelector:@selector(page36) withObject:nil];
        done36 = NO;
    }
}



-(void)checker{
    NSString *checkVar = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]];
    
    if ([checkVar  isEqual: checkNum]) {
        [myTimer invalidate];
        [self performSelector:NSSelectorFromString([NSString stringWithFormat:@"page%@",checkNum]) withObject:nil];
    } else if ([checkNum isEqual: @"36"]) {
        if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[0].textContent"]]  isEqual: @"WXJM-FM (WXJM)"]) {
            [myTimer invalidate];
            [self performSelector:NSSelectorFromString([NSString stringWithFormat:@"page%@",checkNum]) withObject:nil];
        }
    }
}

-(void)page1{

    if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]]  isEqual: @"1"]) {
        [web stopLoading];

        
    for (int i = 0; i < 10; i++) {
            NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
            NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
            NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
            NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].href", i]];
        [organizationslink addObject:test4];
        NSLog(@"%@",test4);
        [organizationsimage addObject:test3];
            [organizations addObject:test];
            [organizationsdet addObject:test2];

            [tabler reloadData];
            if (i == 9) {
                done2 = YES;
            [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=2"]]];
        }
    }
    }else{
        checkNum = @"1";
        myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];

    }
}

-(void)page2{

    if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]]  isEqual: @"2"]) {
        [web stopLoading];
        
        for (int i = 0; i < 10; i++) {
            NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
            NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
            NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
            NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].href", i]];
            [organizationslink addObject:test4];
            [organizationsimage addObject:test3];
            [organizations addObject:test];
            [organizationsdet addObject:test2];
            [tabler reloadData];

            
            if (i == 9) {
                done3 = YES;
                
                [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=3"]]];
            }
        }
    }else{
        checkNum = @"2";
        myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];
    }

}
-(void)page3{

    if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]]  isEqual: @"3"]) {
        [web stopLoading];

    for (int i = 0; i < 10; i++) {
        NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
        NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
        NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
        NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].href", i]];
        [organizationslink addObject:test4];
        [organizationsimage addObject:test3];

        [organizations addObject:test];
        [organizationsdet addObject:test2];
        [tabler reloadData];
        
        if (i == 9) {
            done4 = YES;
            [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=4"]]];
        }
    }
    }else{
        checkNum = @"3";
        myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];    }
}
-(void)page4{

    if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]]  isEqual: @"4"]) {
        [web stopLoading];

    for (int i = 0; i < 10; i++) {
        NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
        NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
        NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
        NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].href", i]];
        [organizationslink addObject:test4];
        [organizationsimage addObject:test3];
        [organizations addObject:test];
        [organizationsdet addObject:test2];
        [tabler reloadData];
        
        if (i == 9) {
            done5 = YES;

            [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=5"]]];

        }
    }
    }
    else{
        checkNum = @"4";
        myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];
    }
}
-(void)page5{
    if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]]  isEqual: @"5"]) {

    for (int i = 0; i < 10; i++) {
        NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
        NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
        NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
        NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].href", i]];
        [organizationslink addObject:test4];
        [organizationsimage addObject:test3];
        [organizations addObject:test];
        [organizationsdet addObject:test2];
        [tabler reloadData];
        
        if (i == 9) {
            done6 = YES;

            [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=6"]]];
        }
    }
    }    else{
        checkNum = @"5";
        myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];
    }
}
-(void)page6{
    if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]]  isEqual: @"6"]) {

    for (int i = 0; i < 10; i++) {
        
        NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
        NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
        NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
        NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].href", i]];
        [organizationslink addObject:test4];
        [organizationsimage addObject:test3];
        [organizations addObject:test];
        [organizationsdet addObject:test2];
        [tabler reloadData];
        
        if (i == 9) {
            done7 = YES;

            [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=7"]]];
        }
    }
    }    else{
        checkNum = @"6";
        myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];
    }
}
-(void)page7{
    if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]]  isEqual: @"7"]) {

    for (int i = 0; i < 10; i++) {
        
        NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
        NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
        NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
        NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].href", i]];
        [organizationslink addObject:test4];
        [organizationsimage addObject:test3];
        [organizations addObject:test];
        [organizationsdet addObject:test2];
        [tabler reloadData];
        
        if (i == 9) {
            done8 = YES;

            [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=8"]]];
        }
    }
    }    else{
        checkNum = @"7";
        myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];
    }
}
-(void)page8{
    if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]]  isEqual: @"8"]) {

    for (int i = 0; i < 10; i++) {
        
        NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
        NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
        NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
        NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].href", i]];
        [organizationslink addObject:test4];
        [organizationsimage addObject:test3];
        [organizations addObject:test];
        [organizationsdet addObject:test2];
        [tabler reloadData];
        
        if (i == 9) {
            done9 = YES;

            [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=9"]]];
        }
    }
    }   else{
        checkNum = @"8";
        myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];
    }
}
-(void)page9{
    if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]]  isEqual: @"9"]) {

    for (int i = 0; i < 10; i++) {
        
        NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
        NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
        NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
        NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].href", i]];
        [organizationslink addObject:test4];
        [organizationsimage addObject:test3];
        [organizations addObject:test];
        [organizationsdet addObject:test2];
        [tabler reloadData];
        
        if (i == 9) {
            done10 = YES;

            [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=10"]]];
        }
    }
    }   else{
        checkNum = @"9";
        myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];
    }
}
-(void)page10{
    if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]]  isEqual: @"10"]) {

    for (int i = 0; i < 10; i++) {
        
        NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
        NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
        NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
        NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].href", i]];
        [organizationslink addObject:test4];
        [organizationsimage addObject:test3];
        [organizations addObject:test];
        [organizationsdet addObject:test2];
        [tabler reloadData];
        
        if (i == 9) {
            done11 = YES;

            [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=11"]]];
        }
    }
    }   else{
        checkNum = @"10";
        myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];
    }
}
-(void)page11{
    if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]]  isEqual: @"11"]) {

    for (int i = 0; i < 10; i++) {
        
        NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
        NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
        NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
        NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].href", i]];
        [organizationslink addObject:test4];
        [organizationsimage addObject:test3];
        [organizations addObject:test];
        [organizationsdet addObject:test2];
        [tabler reloadData];
        
        if (i == 9) {
            done12 = YES;

            [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=12"]]];
        }
    }
    }   else{
        checkNum = @"11";
        myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];
    }
}
-(void)page12{
    if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]]  isEqual: @"12"]) {

    for (int i = 0; i < 10; i++) {
        
        NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
        NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
        NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
        NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].href", i]];
        [organizationslink addObject:test4];
        [organizationsimage addObject:test3];
        [organizations addObject:test];
        [organizationsdet addObject:test2];
        [tabler reloadData];
        
        if (i == 9) {
            done13 = YES;

            [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=13"]]];
        }
    }
    }   else{
        checkNum = @"12";
        myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];
    }
}
-(void)page13{
    if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]]  isEqual: @"13"]) {

    for (int i = 0; i < 10; i++) {
        
        NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
        NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
        NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
        NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].href", i]];
        [organizationslink addObject:test4];
        [organizationsimage addObject:test3];
        [organizations addObject:test];
        [organizationsdet addObject:test2];
        [tabler reloadData];
        
        if (i == 9) {
            done14 = YES;

            [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=14"]]];
        }
    }
    }   else{
        checkNum = @"13";
        myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];
    }
}
-(void)page14{
    if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]]  isEqual: @"14"]) {

    for (int i = 0; i < 10; i++) {
        
        NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
        NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
        NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
        NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].href", i]];
        [organizationslink addObject:test4];
        [organizationsimage addObject:test3];
        [organizations addObject:test];
        [organizationsdet addObject:test2];
        [tabler reloadData];
        
        if (i == 9) {
            done15 = YES;

            [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=15"]]];
        }
    }
    }   else{
        checkNum = @"14";
        myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];
    }
}
-(void)page15{
    if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]]  isEqual: @"15"]) {

    for (int i = 0; i < 10; i++) {
        
        NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
        NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
        NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
        NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].href", i]];
        [organizationslink addObject:test4];
        [organizationsimage addObject:test3];
        [organizations addObject:test];
        [organizationsdet addObject:test2];
        [tabler reloadData];
        
        if (i == 9) {
            done16 = YES;

            [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=16"]]];
        }
    }
    }   else{
        checkNum = @"15";
        myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];
    }
}
-(void)page16{
    if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]]  isEqual: @"16"]) {

    for (int i = 0; i < 10; i++) {
        
        NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
        NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
        NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
        NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].href", i]];
        [organizationslink addObject:test4];
        [organizationsimage addObject:test3];
        [organizations addObject:test];
        [organizationsdet addObject:test2];
        [tabler reloadData];
        
        if (i == 9) {
            done17 = YES;

            [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=17"]]];
        }
    }
    }   else{
        checkNum = @"16";
        myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];
    }
}
-(void)page17{
    if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]]  isEqual: @"17"]) {

    for (int i = 0; i < 10; i++) {
        
        NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
        NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
        NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
        NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].href", i]];
        [organizationslink addObject:test4];
        [organizationsimage addObject:test3];
        [organizations addObject:test];
        [organizationsdet addObject:test2];
        [tabler reloadData];
        
        if (i == 9) {
            done18 = YES;

            [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=18"]]];
        }
    }
    }   else{
        checkNum = @"17";
        myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];
    }
}
-(void)page18{
    if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]]  isEqual: @"18"]) {

    for (int i = 0; i < 10; i++) {
        
        NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
        NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
        NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
        NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].href", i]];
        [organizationslink addObject:test4];
        [organizationsimage addObject:test3];
        [organizations addObject:test];
        [organizationsdet addObject:test2];
        [tabler reloadData];
        
        if (i == 9) {
            done19 = YES;

            [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=19"]]];
        }
    }
    }   else{
        checkNum = @"18";
        myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];
    }
}
-(void)page19{
    if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]]  isEqual: @"19"]) {

    for (int i = 0; i < 10; i++) {
        
        NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
        NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
        NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
        NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].href", i]];
        [organizationslink addObject:test4];
        [organizationsimage addObject:test3];
        [organizations addObject:test];
        [organizationsdet addObject:test2];
        [tabler reloadData];
        
        if (i == 9) {
            done20 = YES;

            [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=20"]]];
        }
    }
    }   else{
        checkNum = @"19";
        myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];
    }
}
-(void)page20{
    if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]]  isEqual: @"20"]) {

    for (int i = 0; i < 10; i++) {
        
        NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
        NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
        NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
        NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].href", i]];
        [organizationslink addObject:test4];
        [organizationsimage addObject:test3];
        [organizations addObject:test];
        [organizationsdet addObject:test2];
        [tabler reloadData];
        
        if (i == 9) {
            done21 = YES;

            [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=21"]]];
        }
    }
    }   else{
        checkNum = @"20";
        myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];
    }
}
-(void)page21{
    if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]]  isEqual: @"21"]) {

    for (int i = 0; i < 10; i++) {
        
        NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
        NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
        NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
        [organizationsimage addObject:test3];
        [organizations addObject:test];
        [organizationsdet addObject:test2];
        [tabler reloadData];
        
        if (i == 9) {
            done22 = YES;

            [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=22"]]];
        }
    }
    }   else{
        checkNum = @"21";
        myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];
    }
}
-(void)page22{
    if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]]  isEqual: @"22"]) {

    for (int i = 0; i < 10; i++) {
        
        NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
        NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
        NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
        NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].href", i]];
        [organizationslink addObject:test4];
        [organizationsimage addObject:test3];
        [organizations addObject:test];
        [organizationsdet addObject:test2];           [tabler reloadData];
        
        if (i == 9) {
            done23 = YES;

            [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=23"]]];
        }
    }
}
    else{
        checkNum = @"22";
        myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];
    }
}
-(void)page23{
    if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]]  isEqual: @"23"]) {

    for (int i = 0; i < 10; i++) {
        
        NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
        NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
        NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
        NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].href", i]];
        [organizationslink addObject:test4];
        [organizationsimage addObject:test3];
        [organizations addObject:test];
        [organizationsdet addObject:test2];        [tabler reloadData];
        
        if (i == 9) {
            done24 = YES;

            [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=24"]]];
        }
    }
    }
    else{
        checkNum = @"23";
        myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];
    }
}
-(void)page24{
    if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]]  isEqual: @"24"]) {

    for (int i = 0; i < 10; i++) {
        
        NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
        NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
        NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
        NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].href", i]];
        [organizationslink addObject:test4];
        [organizationsimage addObject:test3];
        [organizations addObject:test];
        [organizationsdet addObject:test2];          [tabler reloadData];
        
        if (i == 9) {
            done25 = YES;

            [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=25"]]];
        }
    }
    }
    else{
        checkNum = @"24";
        myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];
    }
}
-(void)page25{
    if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]]  isEqual: @"25"]) {

    for (int i = 0; i < 10; i++) {
        
        NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
        NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
        NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
        NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].href", i]];
        [organizationslink addObject:test4];
        [organizationsimage addObject:test3];
        [organizations addObject:test];
        [organizationsdet addObject:test2];         [tabler reloadData];
        
        if (i == 9) {
            done26 = YES;

            [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=26"]]];
        }
    }
    }
    else{
        checkNum = @"25";
        myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];
    }
}
-(void)page26{
    if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]]  isEqual: @"26"]) {

    for (int i = 0; i < 10; i++) {
        
        NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
        NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
        NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
        NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].href", i]];
        [organizationslink addObject:test4];
        [organizationsimage addObject:test3];
        [organizations addObject:test];
        [organizationsdet addObject:test2];       [tabler reloadData];
        
        if (i == 9) {
            done27 = YES;

            [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=27"]]];
        }
    }
    }
    else{
        checkNum = @"26";
        myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];
    }
}
-(void)page27{
    if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]]  isEqual: @"27"]) {

    for (int i = 0; i < 10; i++) {
        
        NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
        NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
        NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
        NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].href", i]];
        [organizationslink addObject:test4];
        [organizationsimage addObject:test3];
        [organizations addObject:test];
        [organizationsdet addObject:test2];      [tabler reloadData];
        
        if (i == 9) {
            done28 = YES;

            [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=28"]]];
        }
    }
    }
    else{
        checkNum = @"27";
        myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];
    }
}
-(void)page28{
    if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]]  isEqual: @"28"]) {

    for (int i = 0; i < 10; i++) {
        
        NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
        NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
        NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
        NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].href", i]];
        [organizationslink addObject:test4];
        [organizationsimage addObject:test3];
        [organizations addObject:test];
        [organizationsdet addObject:test2];     [tabler reloadData];
        
        if (i == 9) {
            done29 = YES;

            [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=29"]]];
        }
    }
    }
    else{
        checkNum = @"28";
        myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];
    }
}
-(void)page29{
    if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]]  isEqual: @"29"]) {

    for (int i = 0; i < 10; i++) {
        
        NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
        NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
        NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
        NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].href", i]];
        [organizationslink addObject:test4];
        [organizationsimage addObject:test3];
        [organizations addObject:test];
        [organizationsdet addObject:test2];      [tabler reloadData];
        
        if (i == 9) {
            done30 = YES;

            [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=30"]]];
        }
    }
    }
    else{
        checkNum = @"29";
        myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];
    }
}
-(void)page30{
    if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]]  isEqual: @"30"]) {

    for (int i = 0; i < 10; i++) {
        
        NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
        NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
        NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
        NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].href", i]];
        [organizationslink addObject:test4];
        [organizationsimage addObject:test3];
        [organizations addObject:test];
        [organizationsdet addObject:test2];    [tabler reloadData];
        
        if (i == 9) {
            done31 = YES;

            [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=31"]]];
        }
    }
    }
    else{
        checkNum = @"30";
        myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];
    }
}
-(void)page31{
    if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]]  isEqual: @"31"]) {

    for (int i = 0; i < 10; i++) {
        NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
        NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
        NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
        NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].href", i]];
        [organizationslink addObject:test4];
        [organizationsimage addObject:test3];
        [organizations addObject:test];
        [organizationsdet addObject:test2];    [tabler reloadData];
        
        if (i == 9) {
            done32 = YES;

            [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=32"]]];
        }
    }
    }
    else{
        checkNum = @"31";
        myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];
    }
}
-(void)page32{
    if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]]  isEqual: @"32"]) {

    for (int i = 0; i < 10; i++) {
        
        NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
        NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
        NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
        NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].href", i]];
        [organizationslink addObject:test4];
        [organizationsimage addObject:test3];
        [organizations addObject:test];
        [organizationsdet addObject:test2];     [tabler reloadData];
        
        if (i == 9) {
            done33 = YES;

            [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=33"]]];
        }
    }
    }
    else{
        checkNum = @"32";
        myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];
    }
}
-(void)page33{
    if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]]  isEqual: @"33"]) {

    for (int i = 0; i < 10; i++) {
        NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
        NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
        NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
        NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].href", i]];
        [organizationslink addObject:test4];
        [organizationsimage addObject:test3];
        [organizations addObject:test];
        [organizationsdet addObject:test2];     [tabler reloadData];
        
        if (i == 9) {
            done34 = YES;

            [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=34"]]];
        }
    }
    }
    else{
        checkNum = @"33";
        myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];
    }
}
-(void)page34{
    if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]]  isEqual: @"34"]) {

    for (int i = 0; i < 10; i++) {
        NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
        NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
        NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
        NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].href", i]];
        [organizationslink addObject:test4];
        [organizationsimage addObject:test3];
        [organizations addObject:test];
        [organizationsdet addObject:test2];  [tabler reloadData];
        
        if (i == 9) {
            done35 = YES;

            [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=35"]]];
        }
    }
    }
    else{
        checkNum = @"34";
        myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];
    }
}
-(void)page35{
    if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('pager').getElementsByClassName('currentPage')[0].textContent"]]  isEqual: @"35"]) {

    for (int i = 0; i < 10; i++) {
        NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
        NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
        NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
        NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].href", i]];
        [organizationslink addObject:test4];
        [organizationsimage addObject:test3];
        [organizations addObject:test];
        [organizationsdet addObject:test2];   [tabler reloadData];
        
        if (i == 9) {
            done36 = YES;
            [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:/beinvolved.jmu.edu/organizations?SearchType=None&SelectedCategoryId=0&CurrentPage=36"]]];
        }
    }
    }
    else{
        checkNum = @"35";
        myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];
    }
}


-(void)page36{
        if ([[web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[0].textContent"]]  isEqual: @"WXJM-FM (WXJM)"]) {
        for (int i = 0; i < 4; i++) {
            NSString *test = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].textContent", i]];
            NSString *test2 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('p')[%d].textContent", i]];
            NSString *test3 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('img')[%d].src", i]];
            [organizationsimage addObject:test3];
            [organizations addObject:test];
            [organizationsdet addObject:test2];
            NSString *test4 = [web stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"document.getElementById('results').getElementsByTagName('a')[%d].href", i]];
            [organizationslink addObject:test4];
            [tabler reloadData];
            
            if (i == 3) {
                NSLog(@"%lu ", (unsigned long)organizations.count);  // not %@ ..%@ is for objects .. not int
                
            }
        }
        }else{
            checkNum = @"36";
            myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(checker) userInfo:nil repeats:YES];
        }
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
        }
    });

    return cell;
}



@end
