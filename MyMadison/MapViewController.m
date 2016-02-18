//
//  MapViewController.m
//  MyMadison
//
//  Created by Paul Dippold on 9/11/15.
//  Copyright © 2015 Paul Dippold. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

- (void)viewDidLoad {
    MKCoordinateRegion region;
    region.center.latitude = 38.4384;
    region.center.longitude = -78.8738;
    region.span.latitudeDelta = 0.0055;
    region.span.longitudeDelta = 0.0055;
    
    [maperView setRegion:region animated:YES];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    maperView.delegate = self;
    
    
    CLLocationCoordinate2D stadiumCoord = CLLocationCoordinate2DMake(38.435282, -78.873001);
    Annotation *stadiumAnn = [[Annotation alloc]initWithTitle:@"Bridgeforth Stadium" Location:stadiumCoord];
    [maperView addAnnotation:stadiumAnn];
    
    CLLocationCoordinate2D dhallCoord = CLLocationCoordinate2DMake(38.437530,  -78.872145);
    Annotation *dhallAnn = [[Annotation alloc]initWithTitle:@"Gibbons Hall" Location:dhallCoord];
    [maperView addAnnotation:dhallAnn];
    
    CLLocationCoordinate2D wilCoord = CLLocationCoordinate2DMake(38.438055, -78.873103);
    Annotation *wilAnn = [[Annotation alloc]initWithTitle:@"Wilson Hall" Location:wilCoord];
    [maperView addAnnotation:wilAnn];
    
    CLLocationCoordinate2D carCoord = CLLocationCoordinate2DMake(38.438832, -78.871786);
    Annotation *carAnn = [[Annotation alloc]initWithTitle:@"Carrier Library" Location:carCoord];
    [maperView addAnnotation:carAnn];
    
    CLLocationCoordinate2D hofCoord = CLLocationCoordinate2DMake(38.436887, -78.874835);
    Annotation *hofAnn = [[Annotation alloc]initWithTitle:@"Hoffman Hall" Location:hofCoord];
    [maperView addAnnotation:hofAnn];
    
    CLLocationCoordinate2D logCoord = CLLocationCoordinate2DMake(38.437569, -78.875163);
    Annotation *logAnn = [[Annotation alloc]initWithTitle:@"Logan Hall" Location:logCoord];
    [maperView addAnnotation:logAnn];
    
    CLLocationCoordinate2D wayCoord = CLLocationCoordinate2DMake(38.437445, -78.875767);
    Annotation *wayAnn = [[Annotation alloc]initWithTitle:@"Wayland Hall" Location:wayCoord];
    [maperView addAnnotation:wayAnn];
    
    CLLocationCoordinate2D gifCoord = CLLocationCoordinate2DMake(38.437974, -78.875800);
    Annotation *gifAnn = [[Annotation alloc]initWithTitle:@"Gifford Hall" Location:gifCoord];
    [maperView addAnnotation:gifAnn];
    
    CLLocationCoordinate2D conCoord = CLLocationCoordinate2DMake(38.438476, -78.875699);
    Annotation *conAnn = [[Annotation alloc]initWithTitle:@"Converse Hall" Location:conCoord];
    [maperView addAnnotation:conAnn];
    
    CLLocationCoordinate2D ashCoord = CLLocationCoordinate2DMake(38.438759, -78.875168);
    Annotation *ashAnn = [[Annotation alloc]initWithTitle:@"Ashby Hall" Location:ashCoord];
    [maperView addAnnotation:ashAnn];
    
    CLLocationCoordinate2D wamCoord = CLLocationCoordinate2DMake(38.439139, -78.875688);
    Annotation *wamAnn = [[Annotation alloc]initWithTitle:@"Wampler Hall" Location:wamCoord];
    [maperView addAnnotation:wamAnn];
    
    CLLocationCoordinate2D forCoord = CLLocationCoordinate2DMake(38.440048, -78.876032);
    Annotation *forAnn = [[Annotation alloc]initWithTitle:@"Forbes Center for the Performing Arts" Location:forCoord];
    [maperView addAnnotation:forAnn];
    
    CLLocationCoordinate2D spotCoord = CLLocationCoordinate2DMake(38.439680, -78.874192);
    Annotation *spotAnn = [[Annotation alloc]initWithTitle:@"Spotswood Hall" Location:spotCoord];
    [maperView addAnnotation:spotAnn];
    
    CLLocationCoordinate2D gracCoord = CLLocationCoordinate2DMake(38.443078, -78.874798);
    Annotation *gracAnn = [[Annotation alloc]initWithTitle:@"Apartments on Grace Street" Location:gracCoord];
    [maperView addAnnotation:gracAnn];
    
    CLLocationCoordinate2D willCoord = CLLocationCoordinate2DMake(38.432644, -78.876439);
    Annotation *willAnn = [[Annotation alloc]initWithTitle:@"Willow Hall" Location:willCoord];
    [maperView addAnnotation:willAnn];
    
    CLLocationCoordinate2D oakCoord = CLLocationCoordinate2DMake(38.432755, -78.876209);
    Annotation *oakAnn = [[Annotation alloc]initWithTitle:@"Oak Hall" Location:oakCoord];
    [maperView addAnnotation:oakAnn];
    
    CLLocationCoordinate2D magCoord = CLLocationCoordinate2DMake(38.432984, -78.876211);
    Annotation *magAnn = [[Annotation alloc]initWithTitle:@"Magnolia Hall" Location:magCoord];
    [maperView addAnnotation:magAnn];
    
    CLLocationCoordinate2D dogCoord = CLLocationCoordinate2DMake(38.433154, -78.876351);
    Annotation *dogAnn = [[Annotation alloc]initWithTitle:@"Dogwood Hall" Location:dogCoord];
    [maperView addAnnotation:dogAnn];
    
    CLLocationCoordinate2D sprCoord = CLLocationCoordinate2DMake(38.433400, -78.876461);
    Annotation *sprAnn = [[Annotation alloc]initWithTitle:@"Spruce Hall" Location:sprCoord];
    [maperView addAnnotation:sprAnn];
    
    CLLocationCoordinate2D mapCoord = CLLocationCoordinate2DMake(38.433579, -78.876187);
    Annotation *mapAnn = [[Annotation alloc]initWithTitle:@"Maple Hall" Location:mapCoord];
    [maperView addAnnotation:mapAnn];
    
    CLLocationCoordinate2D sonCoord = CLLocationCoordinate2DMake(38.432411, -78.874130);
    Annotation *sonAnn = [[Annotation alloc]initWithTitle:@"Sonner Hall" Location:sonCoord];
    [maperView addAnnotation:sonAnn];
    
    CLLocationCoordinate2D chaCoord = CLLocationCoordinate2DMake(38.433252, -78.873556);
    Annotation *chaAnn = [[Annotation alloc]initWithTitle:@"Chandler Hall" Location:chaCoord];
    [maperView addAnnotation:chaAnn];
    
    CLLocationCoordinate2D shoCoord = CLLocationCoordinate2DMake(38.434093, -78.873733);
    Annotation *shoAnn = [[Annotation alloc]initWithTitle:@"Shorts Hall" Location:shoCoord];
    [maperView addAnnotation:shoAnn];
    
    CLLocationCoordinate2D eagCoord = CLLocationCoordinate2DMake(38.434164, -78.872918);
    Annotation *eagAnn = [[Annotation alloc]initWithTitle:@"Eagle Hall" Location:eagCoord];
    [maperView addAnnotation:eagAnn];
    
    CLLocationCoordinate2D rocCoord = CLLocationCoordinate2DMake(38.427045, -78.875839);
    Annotation *rocAnn = [[Annotation alloc]initWithTitle:@"Rockingham Hall" Location:rocCoord];
    [maperView addAnnotation:rocAnn];
    
    CLLocationCoordinate2D convCoord = CLLocationCoordinate2DMake(38.431895, -78.868833);
    Annotation *convAnn = [[Annotation alloc]initWithTitle:@"Convocation Center" Location:convCoord];
    [maperView addAnnotation:convAnn];
    
    CLLocationCoordinate2D urecCoord = CLLocationCoordinate2DMake(38.433668, -78.867481);
    Annotation *urecAnn = [[Annotation alloc]initWithTitle:@"UREC" Location:urecCoord];
    [maperView addAnnotation:urecAnn];
    
    CLLocationCoordinate2D easCoord = CLLocationCoordinate2DMake(38.431130, -78.861076);
    Annotation *easAnn = [[Annotation alloc]initWithTitle:@"East Campus Dining Hall" Location:easCoord];
    [maperView addAnnotation:easAnn];
    
    CLLocationCoordinate2D shenCoord = CLLocationCoordinate2DMake(38.431466, -78.862771);
    Annotation *shenAnn = [[Annotation alloc]initWithTitle:@"Shenandoah Hall" Location:shenCoord];
    [maperView addAnnotation:shenAnn];
    
    CLLocationCoordinate2D chesCoord = CLLocationCoordinate2DMake(38.432122, -78.861655);
    Annotation *chesAnn = [[Annotation alloc]initWithTitle:@"Chhesapeake Hall" Location:chesCoord];
    [maperView addAnnotation:chesAnn];
    
    CLLocationCoordinate2D potCoord = CLLocationCoordinate2DMake(38.432240, -78.860464);
    Annotation *potAnn = [[Annotation alloc]initWithTitle:@"Potomac Hall" Location:potCoord];
    [maperView addAnnotation:potAnn];
    
    CLLocationCoordinate2D fesCoord = CLLocationCoordinate2DMake(38.432828, -78.859541);
    Annotation *fesAnn = [[Annotation alloc]initWithTitle:@"Festival Conference and Steve Center" Location:fesCoord];
    [maperView addAnnotation:fesAnn];
    
    CLLocationCoordinate2D rosCoord = CLLocationCoordinate2DMake(38.434021, -78.858082);
    Annotation *rosAnn = [[Annotation alloc]initWithTitle:@"Rose Library" Location:rosCoord];
    [maperView addAnnotation:rosAnn];
    
    CLLocationCoordinate2D univCoord = CLLocationCoordinate2DMake(38.423460, -78.866901);
    Annotation *univAnn = [[Annotation alloc]initWithTitle:@"University Park" Location:univCoord];
    [maperView addAnnotation:univAnn];
    
    CLLocationCoordinate2D whitCoord = CLLocationCoordinate2DMake(38.435900, -78.866714);
    Annotation *whitAnn = [[Annotation alloc]initWithTitle:@"White Hall" Location:whitCoord];
    [maperView addAnnotation:whitAnn];
    
    CLLocationCoordinate2D weaCoord = CLLocationCoordinate2DMake(38.435609, -78.867770);
    Annotation *weaAnn = [[Annotation alloc]initWithTitle:@"Weaver Hall" Location:weaCoord];
    [maperView addAnnotation:weaAnn];

    CLLocationCoordinate2D ikeCoord = CLLocationCoordinate2DMake(38.436726, -78.867014);
    Annotation *ikeAnn = [[Annotation alloc]initWithTitle:@"Ikenberry Hall" Location:ikeCoord];
    [maperView addAnnotation:ikeAnn];
    
    CLLocationCoordinate2D dinCoord = CLLocationCoordinate2DMake(38.436376, -78.867910);
    Annotation *dinAnn = [[Annotation alloc]initWithTitle:@"Dingledine Hall" Location:dinCoord];
    [maperView addAnnotation:dinAnn];
    
    CLLocationCoordinate2D garCoord = CLLocationCoordinate2DMake(38.436922, -78.868023);
    Annotation *garAnn = [[Annotation alloc]initWithTitle:@"Garber Hall" Location:garCoord];
    [maperView addAnnotation:garAnn];
    
    CLLocationCoordinate2D chappCoord = CLLocationCoordinate2DMake(38.435496, -78.868731);
    Annotation *chappAnn = [[Annotation alloc]initWithTitle:@"Chappelear Hall" Location:chappCoord];
    [maperView addAnnotation:chappAnn];
    
    CLLocationCoordinate2D hanCoord = CLLocationCoordinate2DMake(38.435300, -78.869305);
    Annotation *hanAnn = [[Annotation alloc]initWithTitle:@"Hanson Hall" Location:hanCoord];
    [maperView addAnnotation:hanAnn];
    
    CLLocationCoordinate2D freCoord = CLLocationCoordinate2DMake(38.436108, -78.869664);
    Annotation *freAnn = [[Annotation alloc]initWithTitle:@"Frederikson Hall" Location:freCoord];
    [maperView addAnnotation:freAnn];
    
    CLLocationCoordinate2D hufCoord = CLLocationCoordinate2DMake(38.436536, -78.868854);
    Annotation *hufAnn = [[Annotation alloc]initWithTitle:@"Huffman Hall" Location:hufCoord];
    [maperView addAnnotation:hufAnn];
    
    CLLocationCoordinate2D hillCoord = CLLocationCoordinate2DMake(38.438349, -78.868988);
    Annotation *hillAnn = [[Annotation alloc]initWithTitle:@"Hillside Hall" Location:hillCoord];
    [maperView addAnnotation:hillAnn];
    
    CLLocationCoordinate2D belCoord = CLLocationCoordinate2DMake(38.438747, -78.867626);
    Annotation *belAnn = [[Annotation alloc]initWithTitle:@"Bell Hall" Location:belCoord];
    [maperView addAnnotation:belAnn];
    
    CLLocationCoordinate2D mcgCoord = CLLocationCoordinate2DMake(38.438580, -78.866842);
    Annotation *mcgAnn = [[Annotation alloc]initWithTitle:@"McGraw-Long Hall" Location:mcgCoord];
    [maperView addAnnotation:mcgAnn];

    CLLocationCoordinate2D warCoord = CLLocationCoordinate2DMake(38.437590, -78.870697);
    Annotation *warAnn = [[Annotation alloc]initWithTitle:@"Madison Union: Warren Hall" Location:warCoord];
    [maperView addAnnotation:warAnn];

    CLLocationCoordinate2D misCoord = CLLocationCoordinate2DMake(38.437174, -78.869753);
    Annotation *misAnn = [[Annotation alloc]initWithTitle:@"Mister Chips" Location:misCoord];
    [maperView addAnnotation:misAnn];
    
    CLLocationCoordinate2D bookCoord = CLLocationCoordinate2DMake(38.437174, -78.869753);
    Annotation *bookAnn = [[Annotation alloc]initWithTitle:@"Bookstore" Location:bookCoord];
    [maperView addAnnotation:bookAnn];
    
    CLLocationCoordinate2D antCoord = CLLocationCoordinate2DMake(38.441415, -78.875517);
    Annotation *antAnn = [[Annotation alloc]initWithTitle:@"Anthony-Seeger Hall" Location:antCoord];
    [maperView addAnnotation:antAnn];
    
    CLLocationCoordinate2D camCoord = CLLocationCoordinate2DMake(38.441254, -78.875672);
    Annotation *camAnn = [[Annotation alloc]initWithTitle:@"Campus Police" Location:camCoord];
    [maperView addAnnotation:camAnn];
    
    CLLocationCoordinate2D sscCoord = CLLocationCoordinate2DMake(38.440137, -78.871526);
    Annotation *sscAnn = [[Annotation alloc]initWithTitle:@"Student Success Center" Location:sscCoord];
    [maperView addAnnotation:sscAnn];
}



-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation{
    if ([annotation isKindOfClass:[Annotation class]]) {
        Annotation *myLocation = (Annotation *)annotation;
        
        MKAnnotationView *annotationview = [maperView dequeueReusableAnnotationViewWithIdentifier:@"MyAnnotation"];
        
        
        if (annotationview ==nil)
            annotationview = myLocation.annotationView;
        else
            annotationview.annotation = annotation;
        return annotationview;
    }
    else
        return nil;
}

- (void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view
calloutAccessoryControlTapped:(UIControl *)control
{
    NSLog(@"accessory button tapped for annotation %@", view.annotation);
}


@end
