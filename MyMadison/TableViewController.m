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
    
    dinHourDictionaries = [[NSMutableArray alloc] init];
    mailHourDictionaries = [[NSMutableArray alloc] init];
    recHourDictionaries = [[NSMutableArray alloc] init];
    libHourDictionaries = [[NSMutableArray alloc] init];


    [diningArrayp addObject:@"annes.jpg"];
    [diningArray addObject:@"Auntie Anne's at T.D.U"];
    [diningArrayh addObject:@"Monday-Friday: 11:00 am - 9:00 pm \nSaturday & Sunday: Closed"];
    [dinHourDictionaries addObject:@{
                                     @"Sun" : @"0",
                                     @"Mon" : @"11,21",
                                     @"Tue" : @"11,21",
                                     @"Wed" : @"11,21",
                                     @"Thu" : @"11,21",
                                     @"Fri" : @"11,21",
                                     @"Sat" : @"0",
                                     }];
    

    [diningArrayp addObject:@"bistro.jpg"];
    [diningArray addObject:@"Bistro 1908"];
    [diningArrayh addObject:@"Monday – Thursday: 11:00 am – 8:00 pm \nFriday: 11:00 am – 3:00 pm \nSunday: Closed"];
    [dinHourDictionaries addObject:@{
                                     @"Sun" : @"0",
                                     @"Mon" : @"11,20",
                                     @"Tue" : @"11,20",
                                     @"Wed" : @"11,20",
                                     @"Thu" : @"11,20",
                                     @"Fri" : @"11,15",
                                     @"Sat" : @"0",
                                     }];
    
    [diningArrayp addObject:@"chik.jpg"];
    [diningArray addObject:@"Chik-Fil-A"];
    [diningArrayh addObject:@"Monday-Friday: 7:30 am - 9:00 pm \nSaturday: 11:00 am - 9:00 pm \nSunday: Closed"];
    [dinHourDictionaries addObject:@{
                                  @"Sun" : @"0",
                                  @"Mon" : @"7.5,21",
                                  @"Tue" : @"7.5,21",
                                  @"Wed" : @"7.5,21",
                                  @"Thu" : @"7.5,21",
                                  @"Fri" : @"7.5,21",
                                  @"Sat" : @"11,21",
                                  }];
    
    [diningArrayp addObject:@"corner.jpg"];
    [diningArray addObject:@"Corner Bistro"];
    [diningArrayh addObject:@"Monday-Thursday: 7:30 am - 6:30 pm \nFriday: 7:30 am - 2:00 pm \nSaturday & Sunday: Closed"];
    
    [dinHourDictionaries addObject:@{
                                  @"Sun" : @"0",
                                  @"Mon" : @"7.5,18.5",
                                  @"Tue" : @"7.5,18.5",
                                  @"Wed" : @"7.5,18.5",
                                  @"Thu" : @"7.5,18.5",
                                  @"Fri" : @"7.5,14",
                                  @"Sat" : @"0",
                                  }];
    
    [diningArrayp addObject:@"dhub.jpg"];
    [diningArray addObject:@"D-Hub"];
    [diningArrayh addObject:@"Monday-Friday: \nBreakfast: 7:00 am - 10:00 am \nLunch: 11:00 am - 2:00 pm \nDinner: 4:30 pm - 9:00 pm \n\nSaturday: \nBrunch 10:00 am – 2:00 pm \nDinner: 4:30 pm - 7:30 pm \n\nSunday: \nBrunch 10:00 am – 3:00 pm \nDinner: 4:30 pm - 7:30 pm"];
    [dinHourDictionaries addObject:@{
                                  @"Sun" : @"10,15,16.5,19.5",
                                  @"Mon" : @"7,10,11,14,16.5,21",
                                  @"Tue" : @"7,10,11,14,16.5,21",
                                  @"Wed" : @"7,10,11,14,16.5,21",
                                  @"Thu" : @"7,10,11,14,16.5,21",
                                  @"Fri" : @"7,10,11,14,16.5,21",
                                  @"Sat" : @"10,14,16.5,19.5",
                                  }];
    

    [diningArrayp addObject:@"dogpound.jpg"];
    [diningArray addObject:@"Dog Pound"];
    [diningArrayh addObject:@"Monday: Closed \nTuesday-Thursday: 10:00 pm - 2:00 am \nFriday & Saturday : 8:00 pm - 2:00 am \nSunday: Closed"];
    [dinHourDictionaries addObject:@{
                                  @"Sun" : @"0",
                                  @"Mon" : @"0",
                                  @"Tue" : @"22,26",
                                  @"Wed" : @"22,26",
                                  @"Thu" : @"22,26",
                                  @"Fri" : @"20,26",
                                  @"Sat" : @"20,26",
                                  }];
    

    [diningArrayp addObject:@"dunkin.jpg"];
    [diningArrayh addObject:@"Sunday: 11:00 am – 7:00 pm \nMonday – Friday: 7:00 am – 7:00 pm \nSaturday: 10:00 am – 4:00 pm"];
    [dinHourDictionaries addObject:@{
                                  @"Sun" : @"11,19",
                                  @"Mon" : @"7,7",
                                  @"Tue" : @"7,7",
                                  @"Wed" : @"7,7",
                                  @"Thu" : @"7,7",
                                  @"Fri" : @"7,7",
                                  @"Sat" : @"10,16",
                                  }];
    

    [diningArrayp addObject:@"ehall.jpg"];
    [diningArray addObject:@"E-Hall"];
    [diningArrayh addObject:@"Monday-Friday: \nBreakfast: 7:00 am-10:00 am \nLunch: 11:00 am-2:00 pm \nDinner: 4:30 pm-8:00 pm \n\nSaturday: \nBrunch 10:00 am – 2:00 pm \nDinner: 4:30 pm - 7:30 pm \n\nSunday: \nBrunch 10:00 am – 3:00 pm \nDinner: 4:30 pm-7:30 pm"];
    [dinHourDictionaries addObject:@{
                                     @"Sun" : @"10,15,16.5,19.5",
                                     @"Mon" : @"7,10,11,14,16.5,20",
                                     @"Tue" : @"7,10,11,14,16.5,20",
                                     @"Wed" : @"7,10,11,14,16.5,20",
                                     @"Thu" : @"7,10,11,14,16.5,20",
                                     @"Fri" : @"7,10,11,14,16.5,20",
                                     @"Sat" : @"10,14,16.5,19.5",
                                     }];
    

    [diningArrayp addObject:@"festival.jpg"];
    [diningArray addObject:@"Festival Food Court"];
    [diningArrayh addObject:@"Monday-Thursday: 11:00 am - 9:00 pm \nFriday: 11:00 am - 8:00 pm \nSaturday & Sunday: 12:00 pm - 8:00 pm"];
    [dinHourDictionaries addObject:@{
                                     @"Sun" : @"12,20",
                                     @"Mon" : @"11,21",
                                     @"Tue" : @"11,21",
                                     @"Wed" : @"11,21",
                                     @"Thu" : @"11,21",
                                     @"Fri" : @"11,20",
                                     @"Sat" : @"12,20",
                                     }];
    
    [diningArrayp addObject:@"fueled.jpg"];
    [diningArray addObject:@"Fueled Food Truck"];
    [diningArrayh addObject:@"Monday-Friday: 11:00 am - 8:00 pm \nSaturday & Sunday: Closed"];
    [dinHourDictionaries addObject:@{
                                     @"Sun" : @"0",
                                     @"Mon" : @"11,20",
                                     @"Tue" : @"11,20",
                                     @"Wed" : @"11,20",
                                     @"Thu" : @"11,20",
                                     @"Fri" : @"11,20",
                                     @"Sat" : @"0",
                                     }];
    

    [diningArrayp addObject:@"grace.jpg"];
    [diningArray addObject:@"Grace Street Market"];
    [diningArrayh addObject:@"Grace Street Market: \nMonday – Thursday: 8:00 am – 9:00 pm \nFriday: 11:00 am – 3:00 pm \nSaturday: Closed \nSunday: 11:00 am - 7:00 pm \n\nGet Your Green On: \nMonday – Thursday: 11:00 am – 7:00 pm \nFriday: 11:00 am – 3:00 pm \nSaturday – Sunday: Closed"];
    [dinHourDictionaries addObject:@{
                                  @"Sun" : @"11,19",
                                  @"Mon" : @"8,21",
                                  @"Tue" : @"8,21",
                                  @"Wed" : @"8,21",
                                  @"Thu" : @"8,21",
                                  @"Fri" : @"11,15",
                                  @"Sat" : @"0",
                                  }];
    


    
    /*
    [diningArray addObject:@"Einstein Bros. Bagels"];
    [diningArrayh addObject:@"Monday-Friday: 7:30 am - 2:00 pm \nSaturday: Closed \nSunday: 12:00 pm - 3:00 pm"];
    [dinHourDictionaries addObject:@{
                                  @"Sun" : @"12,15",
                                  @"Mon" : @"7.5,14",
                                  @"Tue" : @"7.5,14",
                                  @"Wed" : @"7.5,14",
                                  @"Thu" : @"7.5,14",
                                  @"Fri" : @"7.5,14",
                                  @"Sat" : @"0",
                                  }];
    */
    

    [diningArrayp addObject:@"java.jpg"];
    [diningArray addObject:@"Java City at Festival"];
    [diningArrayh addObject:@"Monday-Friday: 7:30 am - 2:00 pm \nSaturday & Sunday: Closed"];
    [dinHourDictionaries addObject:@{
                                  @"Sun" : @"0",
                                  @"Mon" : @"7.5,14",
                                  @"Tue" : @"7.5,14",
                                  @"Wed" : @"7.5,14",
                                  @"Thu" : @"7.5,14",
                                  @"Fri" : @"7.5,14",
                                  @"Sat" : @"0",
                                  }];

    [diningArrayp addObject:@"jemmy.jpg"];
    [diningArray addObject:@"Jemmy's"];
    [diningArrayh addObject:@"Monday-Thursday: 4:30 pm - Midnight \nFriday: 4:30 pm - 8:00 pm \nSaturday & Sunday: 1:00 pm - Midnight"];
    [dinHourDictionaries addObject:@{
                                  @"Sun" : @"13,24",
                                  @"Mon" : @"16.5,12",
                                  @"Tue" : @"16.5,12",
                                  @"Wed" : @"16.5,12",
                                  @"Thu" : @"16.5,12",
                                  @"Fri" : @"16.5,12",
                                  @"Sat" : @"13,24",
                                  }];
    
    /*
    [diningArray addObject:@"Let's Go! Local"];
    [diningArrayh addObject:@"Monday-Friday: 10:45 am - 2:00 pm \nSaturday & Sunday: Closed "];
    [dinHourDictionaries addObject:@{
                                  @"Sun" : @"0",
                                  @"Mon" : @"10.75,14",
                                  @"Tue" : @"10.75,14",
                                  @"Wed" : @"10.75,14",
                                  @"Thu" : @"10.75,14",
                                  @"Fri" : @"10.75,14",
                                  @"Sat" : @"0",
                                  }];
    */
    
    [diningArrayp addObject:@"madisongrill.jpg"];
    [diningArray addObject:@"Madison Grill"];
    [diningArrayh addObject:@"Monday-Friday: 11:00 am-2:00 pm & 5:00 pm-8:30 pm \nSaturday & Sunday: Closed"];
    [dinHourDictionaries addObject:@{
                                  @"Sun" : @"0",
                                  @"Mon" : @"11,14,17,20.5",
                                  @"Tue" : @"11,14,17,20.5",
                                  @"Wed" : @"11,14,17,20.5",
                                  @"Thu" : @"11,14,17,20.5",
                                  @"Fri" : @"11,14,17,20.5",
                                  @"Sat" : @"0",
                                  }];
    
    /*
    [diningArray addObject:@"Market 1"];
    [diningArrayh addObject:@"Monday-Thursday: 7:30 am - 9:00 pm \nFriday: 7:30 am - 2:00 pm \nSaturday & Sunday: Closed"];
    [dinHourDictionaries addObject:@{
                                  @"Sun" : @"0",
                                  @"Mon" : @"7.5,21",
                                  @"Tue" : @"7.5,21",
                                  @"Wed" : @"7.5,21",
                                  @"Thu" : @"7.5,21",
                                  @"Fri" : @"7.5,14",
                                  @"Sat" : @"0",
                                  }];
    */
    
        [diningArrayp addObject:@"mrchips.jpg"];
    [diningArray addObject:@"Mister Chips"];
    [diningArrayh addObject:@"Monday-Friday: 7:30 am (Quiznos 10am) - Midnight \nSaturday & Sunday: 11am (Quiznos 3pm) - 11:00 pm"];
    [dinHourDictionaries addObject:@{
                                  @"Sun" : @"11,23",
                                  @"Mon" : @"7.5,12",
                                  @"Tue" : @"7.5,12",
                                  @"Wed" : @"7.5,12",
                                  @"Thu" : @"7.5,12",
                                  @"Fri" : @"7.5,12",
                                  @"Sat" : @"11,23",
                                  }];
    
    [diningArrayp addObject:@"mrsgreens.jpg"];
    [diningArray addObject:@"Mrs. Greens"];
    [diningArrayh addObject:@"Monday-Thursday: \nLunch 11:00 am-3:30 pm \nDinner 3:30 pm-7:30 pm \nFriday: \nLunch 11:00 am-2:30 pm \nSaturday & Sunday: Closed"];
    [dinHourDictionaries addObject:@{
                                  @"Sun" : @"0",
                                  @"Mon" : @"11,19.5",
                                  @"Tue" : @"11,19.5",
                                  @"Wed" : @"11,19.5",
                                  @"Thu" : @"11,19.5",
                                  @"Fri" : @"11,14.5",
                                  @"Sat" : @"0",
                                  }];
    
    [diningArrayp addObject:@"pcdukes.jpg"];
    [diningArray addObject:@"PC Dukes"];
    [diningArrayh addObject:@"Monday-Thursday: 11:00 am - 10:00 pm \nFriday & Saturday: 11:00 am - 9:00 pm \nSunday: 3:30 pm - 10:00 pm"];
    [dinHourDictionaries addObject:@{
                                  @"Sun" : @"15.5,22",
                                  @"Mon" : @"11,22",
                                  @"Tue" : @"11,22",
                                  @"Wed" : @"11,22",
                                  @"Thu" : @"11,22",
                                  @"Fri" : @"11,21",
                                  @"Sat" : @"11,21",
                                  }];
    
    [diningArrayp addObject:@"pod.jpg"];
    [diningArray addObject:@"P.O.D. Express at ISAT/ENG"];
    [diningArrayh addObject:@"Monday-Thursday: 7:30 am - 5:30 pm \nFriday: 7:30 am - 3:30 pm \nSaturday & Sunday: Closed"];
    [dinHourDictionaries addObject:@{
                                  @"Sun" : @"0",
                                  @"Mon" : @"7.5,17.5",
                                  @"Tue" : @"7.5,17.5",
                                  @"Wed" : @"7.5,17.5",
                                  @"Thu" : @"7.5,17.5",
                                  @"Fri" : @"7.5,15.5",
                                  @"Sat" : @"0",
                                  }];
    
    [diningArrayp addObject:@"pod.jpg"];
    [diningArray addObject:@"P.O.D. Express at Showker Hall"];
    [diningArrayh addObject:@"Monday-Thursday: 7:30 am - 7:00 pm \nFriday: 7:30 am - 2:30 pm \nSaturday & Sunday: Closed"];
    [dinHourDictionaries addObject:@{
                                  @"Sun" : @"0",
                                  @"Mon" : @"7.5,19",
                                  @"Tue" : @"7.5,19",
                                  @"Wed" : @"7.5,19",
                                  @"Thu" : @"7.5,19",
                                  @"Fri" : @"7.5,14.5",
                                  @"Sat" : @"0",
                                  }];
    
    [diningArrayp addObject:@"freshens.jpg"];
    [diningArray addObject:@"UREC Cafe"];
    [diningArrayh addObject:@"Monday-Thursday: 7:30 am - 10:00 pm \nFriday: 7:30 am - 7:30 pm \nSaturday & Sunday: Closed"];
    [dinHourDictionaries addObject:@{
                                  @"Sun" : @"0",
                                  @"Mon" : @"7.5,22",
                                  @"Tue" : @"7.5,22",
                                  @"Wed" : @"7.5,22",
                                  @"Thu" : @"7.5,22",
                                  @"Fri" : @"7.5,19.5",
                                  @"Sat" : @"0",
                                  }];
    
    [diningArrayp addObject:@"starbucks.jpg"];
    [diningArray addObject:@"Starbucks at Carrier Library"];
    [diningArrayh addObject:@"Monday-Thursday: 7:30 am - 1:00 am \n Friday: 7:30 am - 6:00 pm \nSaturday: 12:00 pm - 6:00 pm \nSunday: 12:00 pm - Midnight"];
    [dinHourDictionaries addObject:@{
                                  @"Sun" : @"12,24",
                                  @"Mon" : @"7.5,25",
                                  @"Tue" : @"7.5,25",
                                  @"Wed" : @"7.5,25",
                                  @"Thu" : @"7.5,25",
                                  @"Fri" : @"7.5,18",
                                  @"Sat" : @"12,18",
                                  }];
    
    [diningArrayp addObject:@"starbucks.jpg"];
    [diningArray addObject:@"Starbucks at Rose Library"];
    [diningArrayh addObject:@"Monday-Wednesday: 7:30 am - 1:00 am \nThursday: 7:30 am - 11:00 pm \nFriday:7:30 am - 3:00 pm \nSaturday: Closed \nSunday: 12:00 pm - Midnight"];
    [dinHourDictionaries addObject:@{
                                  @"Sun" : @"12,24",
                                  @"Mon" : @"7.5,25",
                                  @"Tue" : @"7.5,25",
                                  @"Wed" : @"7.5,25",
                                  @"Thu" : @"7.5,23",
                                  @"Fri" : @"7.5,15",
                                  @"Sat" : @"0",
                                  }];
    
        [diningArrayp addObject:@"topdog.jpg"];
    [diningArray addObject:@"Top Dog Cafe"];
    [diningArrayh addObject:@"Monday-Thursday: 10:30 am - 8:00 pm \nFriday: 10:30 am - 3:30 pm \nSaturday: Closed \nSunday: 5:00 pm - 9:00 pm \n\nDunkin’ Donuts Hours: \nMonday – Thursday 8:00 am – 8:00 pm \nFriday 8:00 am – 3:30 pm \nSaturday & Sunday: Closed"];
    [dinHourDictionaries addObject:@{
                                  @"Sun" : @"5,21",
                                  @"Mon" : @"10.5,20",
                                  @"Tue" : @"10.5,20",
                                  @"Wed" : @"10.5,20",
                                  @"Thu" : @"10.5,20",
                                  @"Fri" : @"10.5,15.5",
                                  @"Sat" : @"0",
                                  }];
    
    
    [recreationArrayp addObject:@"urec.jpeg"];
    [recreationArrayp addObject:@"gatehouse.jpg"];
    
    [recreationArray addObject:@"UREC"];
    [recreationArrayh addObject:@"Monday-Thursday: 6:00am-11:30pm \nFriday: 6:00am-10:00pm \nSaturday: 9:00am-10:00pm \nSunday: Noon-11:30pm"];
    [recHourDictionaries addObject:@{
                                  @"Sun" : @"12,23.5",
                                  @"Mon" : @"6,23.5",
                                  @"Tue" : @"6,23.5",
                                  @"Wed" : @"6,23.5",
                                  @"Thu" : @"6,23.5",
                                  @"Fri" : @"6,22",
                                  @"Sat" : @"9,22",
                                  }];
    
    [recreationArray addObject:@"University Park"];
    [recreationArrayh addObject:@"Sunday-Thursday:  11:00am - 11:30pm \nFriday - Saturday:  11:00am - 10:00pm"];
    [recHourDictionaries addObject:@{
                                  @"Sun" : @"11,23.5",
                                  @"Mon" : @"11,23.5",
                                  @"Tue" : @"11,23.5",
                                  @"Wed" : @"11,23.5",
                                  @"Thu" : @"11,23.5",
                                  @"Fri" : @"11,22",
                                  @"Sat" : @"11,22",
                                  }];
    
    
    
    
    
    [libraryArrayp addObject:@"Carrier.jpg"];
    [libraryArrayp addObject:@"Rose.jpg"];
    [libraryArrayp addObject:@"Memorial.jpg"];
    [libraryArrayp addObject:@"Music.jpg"];
    
    [libraryArray addObject:@"Carrier Library"];
    [libraryArrayh addObject:@"Monday-Thursday: 7:30am-2:00am \nFriday: 7:30am-8:00pm \nSaturday: 10:00am-8:00pm \nSunday: 10:00am-2:00am"];
    [libHourDictionaries addObject:@{
                                  @"Sun" : @"10,26",
                                  @"Mon" : @"7.5,26",
                                  @"Tue" : @"7.5,26",
                                  @"Wed" : @"7.5,26",
                                  @"Thu" : @"7.5,26",
                                  @"Fri" : @"7.5,20",
                                  @"Sat" : @"10,20",
                                  }];
    
    [libraryArray addObject:@"Rose Library"];
    [libraryArrayh addObject:@"Monday-Thursday: 7:30am-2:00am \nFriday: 7:30am-8:00pm \nSaturday: 10:00am-8:00pm \nSunday: 10:00am-2:00am"];
    [libHourDictionaries addObject:@{
                                  @"Sun" : @"10,26",
                                  @"Mon" : @"7.5,26",
                                  @"Tue" : @"7.5,26",
                                  @"Wed" : @"7.5,26",
                                  @"Thu" : @"7.5,26",
                                  @"Fri" : @"7.5,20",
                                  @"Sat" : @"10,20",
                                  }];
    
    [libraryArray addObject:@"Memorial Hall - ETMC"];
    [libraryArrayh addObject:@"Monday-Thursday: 8:00am-9:00pm \nFriday: 8:00am-5:00pm \nSaturday: Closed \nSunday: 3:00pm-9:00pm"];
    [libHourDictionaries addObject:@{
                                  @"Sun" : @"3,21",
                                  @"Mon" : @"8,21",
                                  @"Tue" : @"8,21",
                                  @"Wed" : @"8,21",
                                  @"Thu" : @"8,21",
                                  @"Fri" : @"8,17",
                                  @"Sat" : @"0",
                                  }];
    
    [libraryArray addObject:@"Music Library"];
    [libraryArrayh addObject:@"Monday-Thursday: 8:30am-8:00pm \nFriday: 8:20am-3:00pm \nSaturday: Closed \nSunday: 2:00pm-8:00pm"];
    [libHourDictionaries addObject:@{
                                  @"Sun" : @"14,20",
                                  @"Mon" : @"8.5,20",
                                  @"Tue" : @"8.5,20",
                                  @"Wed" : @"8.5,20",
                                  @"Thu" : @"8.5,20",
                                  @"Fri" : @"8.5,15",
                                  @"Sat" : @"0",
                                  }];
    
    
    [mailArrayp addObject:@"madisonunionsmall.png"];
    [mailArray addObject:@"JMU Mail Services"];
    [mailArrayh addObject:@"Monday-Friday: 9:00am-5:00pm \nSaturday: 10:00am-2:00pm"];
    [mailHourDictionaries addObject:@{
                                  @"Sun" : @"10,14",
                                  @"Mon" : @"9,17",
                                  @"Tue" : @"9,17",
                                  @"Wed" : @"9,17",
                                  @"Thu" : @"9,17",
                                  @"Fri" : @"9,17",
                                  @"Sat" : @"10,14",
                                  }];
    
    
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

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    UIImageView *image = (UIImageView *)[cell.contentView viewWithTag:1];
    UILabel *name = (UILabel *)[cell.contentView viewWithTag:2];
    UILabel *openStatus = (UILabel *)[cell.contentView viewWithTag:3];
    UIView *openStatusImage = (UIView *)[cell.contentView viewWithTag:4];
    
    NSArray *array;
    NSArray *picArray;
    NSDictionary *hours;
    if (indexPath.section == 0 ) {
        array = diningArray;
        picArray = diningArrayp;
        hours = [dinHourDictionaries objectAtIndex:indexPath.row];

    } else if (indexPath.section == 1 ) {
        array = recreationArray;
        picArray = recreationArrayp;
        hours = [recHourDictionaries objectAtIndex:indexPath.row];

    } else if (indexPath.section == 2 ) {
        array = libraryArray;
        picArray = libraryArrayp;
        hours = [libHourDictionaries objectAtIndex:indexPath.row];

    } else if (indexPath.section == 3 ) {
        array = mailArray;
        picArray = mailArrayp;
        hours = [mailHourDictionaries objectAtIndex:indexPath.row];

    }
    
    
    name.text = [array objectAtIndex:indexPath.row];
    image.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",[picArray objectAtIndex:indexPath.row]]];
    
    
    NSDate *currentTime = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"EEE"];
    NSString *day = [dateFormatter stringFromDate: currentTime];
    [dateFormatter setDateFormat:@"HH"];
    NSString *hour = [dateFormatter stringFromDate: currentTime];
    [dateFormatter setDateFormat:@"mm"];
    NSString *min = [dateFormatter stringFromDate: currentTime];
    
    double hourInt = [hour intValue];
    double minInt = [min intValue];
    double total = hourInt+(minInt/60);
    
    NSString *hourString = [hours objectForKey:[NSString stringWithFormat:@"%@",day]];
    NSLog(@"%@",hourString);
    
    openStatusImage.layer.cornerRadius = openStatusImage.frame.size.height/2;
    if ([hourString  isEqual: @"0"]) {
        openStatus.text = @"Closed Now";
        openStatusImage.backgroundColor = [UIColor colorWithRed:192/255.0f green:57/255.0f blue:43/255.0f alpha:1];
    } else {
        
        NSArray* foo = [[hours objectForKey:[NSString stringWithFormat:@"%@",day]] componentsSeparatedByString: @","];
        
        if (foo.count == 2) {
            double open = [[foo objectAtIndex: 0] doubleValue];
            double close = [[foo objectAtIndex: 1] doubleValue];
            
            if ((total >= open && total < close) || (close > 25 && total < close-24) ) {
                openStatus.text = @"Open Now";
                openStatusImage.backgroundColor = [UIColor colorWithRed:46/255.0f green:204/255.0f blue:113/255.0f alpha:1];
            } else {
                openStatus.text = @"Closed Now";
                openStatusImage.backgroundColor = [UIColor colorWithRed:192/255.0f green:57/255.0f blue:43/255.0f alpha:1];
            }
        } else if (foo.count == 4){
            double open = [[foo objectAtIndex: 0] doubleValue];
            double close = [[foo objectAtIndex: 1] doubleValue];
            double open2 = [[foo objectAtIndex: 2] doubleValue];
            double close2 = [[foo objectAtIndex: 3] doubleValue];
            
            if ((total >= open && total < close) || (total >= open2 && total < close2)) {
                openStatus.text = @"Open Now";
                openStatusImage.backgroundColor = [UIColor colorWithRed:46/255.0f green:204/255.0f blue:113/255.0f alpha:1];
            } else {
                openStatus.text = @"Closed Now";
                openStatusImage.backgroundColor = [UIColor colorWithRed:192/255.0f green:57/255.0f blue:43/255.0f alpha:1];
            }
            
            
        } else if (foo.count == 6){
            double open = [[foo objectAtIndex: 0] doubleValue];
            double close = [[foo objectAtIndex: 1] doubleValue];
            double open2 = [[foo objectAtIndex: 2] doubleValue];
            double close2 = [[foo objectAtIndex: 3] doubleValue];
            double open3 = [[foo objectAtIndex: 4] doubleValue];
            double close3 = [[foo objectAtIndex: 5] doubleValue];
            
            if ((total >= open && total < close) || (total >= open2 && total < close2) || (total >= open3 && total < close3)) {
                openStatus.text = @"Open Now";
                openStatusImage.backgroundColor = [UIColor colorWithRed:46/255.0f green:204/255.0f blue:113/255.0f alpha:1];
            } else {
                openStatus.text = @"Closed Now";
                openStatusImage.backgroundColor = [UIColor colorWithRed:192/255.0f green:57/255.0f blue:43/255.0f alpha:1];
            }
            
            
        }
        
        
    }
    
    return cell;
    
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSArray *alertArray;
    if (indexPath.section == 0 ) {
        alertArray = diningArrayh;
    } else if (indexPath.section == 1 ) {
        alertArray = recreationArrayh;
    } else if (indexPath.section == 2 ) {
        alertArray = libraryArrayh;
    } else if (indexPath.section == 3 ) {
        alertArray = mailArrayh;
    }
    
    
    UIAlertController *alert =   [UIAlertController
                                  alertControllerWithTitle:@"Hours"
                                  message:[alertArray objectAtIndex:indexPath.row]
                                  preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* cancel = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleCancel
                                                   handler:^(UIAlertAction * action) {
                                                       [alert dismissViewControllerAnimated:YES completion:nil];
                                                   }];
    [alert addAction:cancel];
    
    [self presentViewController:alert animated:YES completion:nil];
}


@end
