//
//  PlaceViewController.m
//  Madison Mobile
//
//  Created by Paul Dippold on 9/30/15.
//  Copyright © 2015 Paul Dippold. All rights reserved.
//

#import "PlaceViewController.h"

@interface PlaceViewController ()

@end

@implementation PlaceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)logout:(id)sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"ViewControllerDismissed"
                                                        object:nil
                                                      userInfo:nil];
    [self.navigationController.presentingViewController dismissViewControllerAnimated:YES completion:nil];

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
