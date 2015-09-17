//
//  YelpResultsViewController.m
//  Discover
//
//  Created by Rachel Diana Chan on 4/30/15.
//  Copyright (c) 2015 Ahmed Zahra & Rachel Chan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import "OAuthConsumer.h"
#import <CoreLocation/CoreLocation.h>
#import <UIKit/UIKit.h>

@protocol YelpAPIServiceDelegate <NSObject>
-(void)loadResultWithDataArray:(NSArray *)resultArray;
@end

@interface YelpAPIService : NSObject <NSURLConnectionDataDelegate>

@property(nonatomic, strong) NSMutableData *urlRespondData;
@property(nonatomic, strong) NSString *responseString;
@property(nonatomic, strong) NSMutableArray *resultArray;

@property (weak, nonatomic) id <YelpAPIServiceDelegate> delegate;

-(void)searchNearByRestaurantsByFilter:(NSString *)categoryFilter atLatitude:(CLLocationDegrees)latitude
                          andLongitude:(CLLocationDegrees)longitude;

@end
