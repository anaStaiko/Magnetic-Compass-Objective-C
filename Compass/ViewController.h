//
//  ViewController.h
//  Compass
//
//  Created by Anastasiia Staiko on 3/7/16.
//  Copyright © 2016 Anastasiia Staiko. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController <CLLocationManagerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *needle;

@property (strong, nonatomic) CLLocationManager *locationManager;


@end

