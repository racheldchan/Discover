//
//  YelpResultsViewController.h
//  Discover
//
//  Created by Rachel Diana Chan on 4/30/15.
//  Copyright (c) 2015 Ahmed Zahra & Rachel Chan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SpeechKit/SpeechKit.h>
#import "AppDelegate.h"
#import "YelpAPIService.h"

@interface YelpResultsViewController : UIViewController <UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource, SpeechKitDelegate, SKRecognizerDelegate>
@property (weak, nonatomic) IBOutlet UITableView *resultTable;
@property (weak, nonatomic) IBOutlet UITextField *searchTextField;
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;
@property (weak, nonatomic) IBOutlet UIButton *recordButton;

@property (strong, nonatomic) AppDelegate *appDelegate;
@property (strong, nonatomic) NSMutableArray *tableViewDisplayDataArray;
@property (strong, nonatomic) SKRecognizer* voiceSearch;
@property (strong, nonatomic) YelpAPIService *yelpService;
@property (strong, nonatomic) NSString* searchCriteria;
@property (strong, nonatomic) SKVocalizer* vocalizer;
@property (strong, nonatomic) NSString * category;
@property (strong, nonatomic) NSString * subcategory;
@property BOOL isSpeaking;

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

- (IBAction)recordButtonTapped:(id)sender;

@end
