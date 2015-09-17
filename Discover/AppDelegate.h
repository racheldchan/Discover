//
//  AppDelegate.h
//  Discover
//
//  Created by Ahmed Zahra on 4/23/15.
//  Copyright (c) 2015 Ahmed Zahra & Rachel Chan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <SpeechKit/SpeechKit.h>

@interface AppDelegate : UIResponder  <UIApplicationDelegate, CLLocationManagerDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) CLLocationManager *customLocationManager;
@property (strong, nonatomic) CLLocation *currentUserLocation;

- (void)updateCurrentLocation;
- (void)stopUpdatingCurrentLocation;
- (void)setupSpeechKitConnection;@end

