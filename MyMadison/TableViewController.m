//
//  TableViewController.m
//  MyMadison
//
//  Created by Paul Dippold on 9/7/15.
//  Copyright © 2015 Paul Dippold. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
        
    diningArray = [[NSMutableArray alloc] init];
    recreationArray = [[NSMutableArray alloc] init];
    libraryArray = [[NSMutableArray alloc] init];
    mailArray = [[NSMutableArray alloc] init];

    
    diningArrayh = [[NSMutableArray alloc] init];
    recreationArrayh = [[NSMutableArray alloc] init];
    libraryArrayh = [[NSMutableArray alloc] init];
    mailArrayh = [[NSMutableArray alloc] init];

    
    diningArrayp = [[NSMutableArray alloc] init];
    recreationArrayp = [[NSMutableArray alloc] init];
    libraryArrayp = [[NSMutableArray alloc] init];
    mailArrayp = [[NSMutableArray alloc] init];


    [diningArray addObject:@"Chik-Fil-A"];
    [diningArrayh addObject:@"Monday-Friday: 7:30 am - 9:00 pm \nSaturday: 11:00 am - 9:00 pm \nSunday: Closed"];
    
    [diningArray addObject:@"Corner Bistro"];
    [diningArrayh addObject:@"Monday-Thursday: 7:30 am - 6:30 pm \nFriday: 7:30 am - 2:00 pm \nSaturday & Sunday: Closed"];

    [diningArray addObject:@"D-Hall"];
    [diningArrayh addObject:@"Monday-Friday: \nBreakfast: 7:00 am - 10:00 am \nLunch: 11:00 am - 2:00 pm \nDinner: 4:30 pm - 9:00 pm \n\nSaturday: \nBrunch 10:00 am – 2:00 pm \nDinner: 4:30 pm - 7:30 pm \n\nSunday: \nBrunch 10:00 am – 3:00 pm \nDinner: 4:30 pm - 7:30 pm"];

    [diningArray addObject:@"Bistro 1908"];
    [diningArrayh addObject:@"Monday – Thursday: 11:00 am – 8:00 pm \nFriday: 11:00 am – 3:00 pm \nSunday: Closed"];

    [diningArray addObject:@"Dog Pound"];
    [diningArrayh addObject:@"Monday: Closed \nTuesday-Thursday: 10:00 pm - 2:00 am \nFriday & Saturday : 8:00 pm - 2:00 am \nSunday: Closed"];

    [diningArray addObject:@"Dunkin' Donuts"];
    [diningArrayh addObject:@"Sunday: 11:00 am – 7:00 pm \nMonday – Friday: 7:00 am – 7:00 pm \nSaturday: 10:00 am – 4:00 pm"];

    [diningArray addObject:@"Grace Street Market"];
    [diningArrayh addObject:@"Grace Street Market: \nMonday – Thursday: 8:00 am – 9:00 pm \nFriday: 11:00 am – 3:00 pm \nSaturday: Closed \nSunday: 11:00 am - 7:00 pm \n\nGet Your Green On: \nMonday – Thursday: 11:00 am – 7:00 pm \nFriday: 11:00 am – 3:00 pm \nSaturday – Sunday: Closed"];

    [diningArray addObject:@"E-Hall"];
    [diningArrayh addObject:@"Monday-Friday: \nBreakfast: 7:00 am-10:00 am \nLunch: 11:00 am-2:00 pm \nDinner: 4:30 pm-8:00 pm \n\nSaturday: \nBrunch 10:00 am – 2:00 pm \nDinner: 4:30 pm-7:30 pm \n\nSunday: \nBrunch 10:00 am – 3:00 pm \nDinner: 4:30 pm-7:30 pm"];

    [diningArray addObject:@"Einstein Bros. Bagels"];
    [diningArrayh addObject:@"Monday-Friday: 7:30 am - 2:00 pm \nSaturday: Closed \nSunday: 12:00 pm - 3:00 pm"];

    [diningArray addObject:@"Festival Food Court"];
    [diningArrayh addObject:@"Monday-Thursday: 11:00 am - 9:00 pm \nFriday: 11:00 am - 8:00 pm \nSaturday & Sunday: 12:00 pm - 8:00 pm"];

    [diningArray addObject:@"Java City at Festival"];
    [diningArrayh addObject:@"Monday-Friday: 7:30 am - 2:00 pm \nSaturday & Sunday: Closed"];

    [diningArray addObject:@"Auntie Anne's at T.D.U"];
    [diningArrayh addObject:@"Monday-Friday: 11:00 am - 9:00 pm \nSaturday & Sunday: Closed"];

    [diningArray addObject:@"Jemmy's"];
    [diningArrayh addObject:@"Monday-Thursday: 4:30 pm - Midnight \nFriday: 4:30 pm - 8:00 pm \nSaturday & Sunday: 1:00 pm - Midnight"];

    [diningArray addObject:@"Let's Go! Local"];
    [diningArrayh addObject:@"Monday-Friday: 10:45 am - 2:00 pm \nSaturday & Sunday: Closed "];

    [diningArray addObject:@"Madison Grill"];
    [diningArrayh addObject:@"Monday-Friday: 11:00 am-2:00 pm & 5:00 pm-8:30 pm \nSaturday & Sunday: Closed"];

    [diningArray addObject:@"Market 1"];
    [diningArrayh addObject:@"Monday-Thursday: 7:30 am - 9:00 pm \nFriday: 7:30 am - 2:00 pm \nSaturday & Sunday: Closed"];

    [diningArray addObject:@"Mister Chips"];
    [diningArrayh addObject:@"Monday-Friday: 7:30 am (Quiznos 10am) - Midnight \nSaturday & Sunday: 11am (Quiznos 3pm) - 11:00 pm"];

    [diningArray addObject:@"Mrs. Greens"];
    [diningArrayh addObject:@"Monday-Thursday: \nLunch 11:00 am-3:30 pm \nDinner 3:30 pm-7:30 pm \nFriday: \nLunch 11:00 am-2:30 pm \nSaturday & Sunday: Closed"];

    [diningArray addObject:@"PC Dukes"];
    [diningArrayh addObject:@"Monday-Thursday: 11:00 am - 10:00 pm \nFriday & Saturday: 11:00 am - 9:00 pm \nSunday: 3:30 pm - 10:00 pm"];

    [diningArray addObject:@"P.O.D. Express at HHS"];
    [diningArrayh addObject:@"Monday-Thursday: 7:30 am - 5:30 pm \nFriday: 7:30 am - 3:30 pm \nSaturday & Sunday: Closed"];

    [diningArray addObject:@"P.O.D. Express at Showker Hall"];
    [diningArrayh addObject:@"Monday-Thursday: 7:30 am - 7:00 pm \nFriday: 7:30 am - 2:30 pm \nSaturday & Sunday: Closed"];

    [diningArray addObject:@"Smoothie Bar at UREC"];
    [diningArrayh addObject:@"Monday-Thursday: 1:00 pm - 10:30 pm \nFriday: 1:00 pm - 9:00 pm \nSaturday & Sunday: Closed"];

    [diningArray addObject:@"Starbucks at Carrier Library"];
    [diningArrayh addObject:@"Monday-Thursday: 7:30 am - 1:00 am \n Friday: 7:30 am - 6:00 pm \nSaturday: 12:00 pm - 6:00 pm \nSunday: 12:00 pm - Midnight"];

    [diningArray addObject:@"Starbucks at Rose Library"];
    [diningArrayh addObject:@"Monday-Wednesday: 7:30 am - 1:00 am \nThursday: 7:30 am - 11:00 pm \nFriday:7:30 am - 3:00 pm \nSaturday: Closed \nSunday: 12:00 pm - Midnight"];

    [diningArray addObject:@"Top Dog Cafe"];
    [diningArrayh addObject:@"Monday-Thursday: 10:30 am - 8:00 pm \nFriday: 10:30 am - 3:30 pm \nSaturday: Closed \nSunday: 5:00 pm - 9:00 pm \n\nDunkin’ Donuts Hours: \nMonday – Thursday 8:00 am – 8:00 pm \nFriday 8:00 am – 3:30 pm \nSaturday & Sunday: Closed"];
    
    [diningArrayp addObject:@"chik.jpg"];
    [diningArrayp addObject:@"corner.jpg"];
    [diningArrayp addObject:@"dhall.jpg"];
    [diningArrayp addObject:@"bistro.jpg"];
    [diningArrayp addObject:@"dogpound.jpg"];
    [diningArrayp addObject:@"dunkin.jpg"];
    [diningArrayp addObject:@""];
    [diningArrayp addObject:@"ehall.jpg"];
    [diningArrayp addObject:@"einstein.jpg"];
    [diningArrayp addObject:@"festival.jpg"];
    [diningArrayp addObject:@"java.jpg"];
    [diningArrayp addObject:@"annes.jpg"];
    [diningArrayp addObject:@"jemmy.jpg"];
    [diningArrayp addObject:@"letsgo.jpg"];
    [diningArrayp addObject:@"madisongrill.jpg"];
    [diningArrayp addObject:@"market1.jpg"];
    [diningArrayp addObject:@"mrchips.jpg"];
    [diningArrayp addObject:@"mrsgreens.jpg"];
    [diningArrayp addObject:@"pcdukes.jpg"];
    [diningArrayp addObject:@"pod.jpg"];
    [diningArrayp addObject:@"pod.jpg"];
    [diningArrayp addObject:@"freshens.jpg"];
    [diningArrayp addObject:@"starbucks.jpg"];
    [diningArrayp addObject:@"starbucks.jpg"];
    [diningArrayp addObject:@"topdog.jpg"];
    
    [recreationArrayp addObject:@"urec.jpeg"];
    [recreationArrayp addObject:@"gatehouse.jpg"];

    [recreationArray addObject:@"UREC"];
    [recreationArrayh addObject:@"Monday-Thursday: 6:00am-11:30pm \nFriday: 6:00am-10:00pm \nSaturday: 9:00am-10:00pm \nSunday: Noon-11:30pm"];

    [recreationArray addObject:@"University Park"];
    [recreationArrayh addObject:@"Sunday-Thursday:  11:00am - 11:30pm \nFriday - Saturday:  11:00am - 10:00pm"];

    
    
    
    [libraryArrayp addObject:@"Carrier.jpg"];
    [libraryArrayp addObject:@"Rose.jpg"];
    [libraryArrayp addObject:@"Memorial.jpg"];
    [libraryArrayp addObject:@"Music.jpg"];
    
    [libraryArray addObject:@"Carrier Library"];
    [libraryArrayh addObject:@"Monday-Thursday: 7:30am-2:00am \nFriday: 7:30am-8:00pm \nSaturday: 10:00am-8:00pm \nSunday: 10:00am-2:00am"];
    
    [libraryArray addObject:@"Rose Library"];
    [libraryArrayh addObject:@"Monday-Thursday: 7:30am-2:00am \nFriday: 7:30am-8:00pm \nSaturday: 10:00am-8:00pm \nSunday: 10:00am-2:00am"];
    
    [libraryArray addObject:@"Memorial Hall - ETMC"];
    [libraryArrayh addObject:@"Monday-Thursday: 8:00am-9:00pm \nFriday: 8:00am-5:00pm \nSaturday-Sunday: 3:00pm-9:0am"];

    [libraryArray addObject:@"Music Library"];
    [libraryArrayh addObject:@"Monday-Thursday: 8:00am-10:45pm \nFriday: 8:00am-4:45pm \nSaturday: 1:00pm-4:45pm \nSunday: 2:00pm-10:45am"];


    [mailArrayp addObject:@"madisonunionsmall.png"];
    [mailArray addObject:@"JMU Mail Services"];
    [mailArrayh addObject:@"Monday-Friday: 9:00am-5:00pm \nSaturday: 10:00am-2:00pm"];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return diningArray.count;
    } else if (section == 1) {
        return recreationArray.count;
    } else if (section == 2) {
        return libraryArray.count;
    } else if (section == 3) {
        return mailArray.count;
    } else{
        return 0;
    }
    
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *sectionName;
    switch (section)
    {
        case 0:
            sectionName = @"Dining";
            break;
        case 1:
            sectionName = @"Recreation";
            break;
            // ...
        case 2:
            sectionName = @"Libraries";
            break;
            // ...
        case 3:
            sectionName = @"Mail";
            break;
            // ...

        default:
            sectionName = @"";
            break;
    }
    return sectionName;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    
    if (indexPath.section == 0) {
        cell.textLabel.text = [diningArray objectAtIndex:indexPath.row];
        cell.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",[diningArrayp objectAtIndex:indexPath.row]]];
    } else if (indexPath.section == 1) {
        cell.textLabel.text = [recreationArray objectAtIndex:indexPath.row];
        cell.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",[recreationArrayp objectAtIndex:indexPath.row]]];
    } else if (indexPath.section == 2) {
        cell.textLabel.text = [libraryArray objectAtIndex:indexPath.row];
                cell.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",[libraryArrayp objectAtIndex:indexPath.row]]];
    }else if (indexPath.section == 3) {
        cell.textLabel.text = [mailArray objectAtIndex:indexPath.row];
        cell.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",[mailArrayp objectAtIndex:indexPath.row]]];
    }
    return cell;
    
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0 ) {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hours" message:[diningArrayh objectAtIndex:indexPath.row]  delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    alert.alertViewStyle = UIAlertViewStyleDefault;
    [alert show];
    } else if (indexPath.section == 1 ) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hours" message:[recreationArrayh objectAtIndex:indexPath.row]  delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        alert.alertViewStyle = UIAlertViewStyleDefault;
        [alert show];
    } else if (indexPath.section == 2 ) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hours" message:[libraryArrayh objectAtIndex:indexPath.row] delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        alert.alertViewStyle = UIAlertViewStyleDefault;
        [alert show];
    } else if (indexPath.section == 3 ) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hours" message:[mailArrayh objectAtIndex:indexPath.row] delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        alert.alertViewStyle = UIAlertViewStyleDefault;
        [alert show];
    }
}


@end
