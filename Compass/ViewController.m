//
//  ViewController.m
//  Compass
//
//  Created by Anastasiia Staiko on 3/7/16.
//  Copyright © 2016 Anastasiia Staiko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize needle;
@synthesize locationManager = _locationManager;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if ([CLLocationManager headingAvailable]) {
        self.locationManager = [[CLLocationManager alloc] init];
        self.locationManager.delegate = self;
        self.locationManager.headingFilter = 2;
        [self.locationManager startUpdatingHeading];
    } else {
        NSLog(@"something went wrong");
    }
}


-(void)locationManager:(CLLocationManager *)manager didUpdateHeading:(CLHeading *)newHeading {
    NSLog(@"Kompass direction is %f", newHeading.magneticHeading);
      self.needle.transform = CGAffineTransformMakeRotation(M_PI / 180 * newHeading.magneticHeading);
}




@end
