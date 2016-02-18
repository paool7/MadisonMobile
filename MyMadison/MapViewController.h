//
//  MapViewController.h
//  MyMadison
//
//  Created by Paul Dippold on 9/11/15.
//  Copyright © 2015 Paul Dippold. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "Annotation.h"

@interface MapViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>{
    IBOutlet MKMapView *maperView;
    CLLocationManager *locationManager;
}

@end
