//
//  Annotation.m
//  MyMadison
//
//  Created by Paul Dippold on 9/11/15.
//  Copyright © 2015 Paul Dippold. All rights reserved.
//

#import "Annotation.h"

@implementation Annotation

-(id)initWithTitle:(NSString *)newTitle Location:(CLLocationCoordinate2D)location{
    self = [super init];
    if (self) {
        _title = newTitle;
        _coordinate = location;
    }
    return self;
}
-(MKAnnotationView *)annotationView{
    MKAnnotationView *annotationView = [[MKAnnotationView alloc]initWithAnnotation:self reuseIdentifier:@"Annotation"];
    
    annotationView.enabled =YES;
    annotationView.canShowCallout = YES;
  
    annotationView.image = [UIImage imageNamed:@"Pin"];
 //   annotationView.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    
    return annotationView;
}


@end
