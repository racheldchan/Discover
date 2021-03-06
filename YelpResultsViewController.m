//
//  YelpResultsViewController.m
//  Discover
//
//  Created by Rachel Diana Chan on 4/30/15.
//  Copyright (c) 2015 Ahmed Zahra & Rachel Chan. All rights reserved.
//

#import "YelpResultsViewController.h"
#import "ResultsTableViewCell.h"'
#import "Restaurant.h"

const unsigned char SpeechKitApplicationKey[] = {0xa1, 0x6a, 0x20, 0x4c, 0xca, 0x7d, 0x4a, 0x3e, 0xeb, 0xa8, 0xf0, 0x06, 0xd0, 0xfe, 0x42, 0xb5, 0x0d, 0x64, 0x42, 0x2d, 0xc2, 0x25, 0x9c, 0x28, 0x56, 0x45, 0x92, 0x95, 0xd2, 0xcc, 0x08, 0x73, 0x36, 0x28, 0xc0, 0x00, 0xa5, 0x0a, 0x3e, 0x90, 0xb2, 0x2e, 0x96, 0x83, 0x2c, 0xd9, 0x38, 0x3a, 0x3d, 0x7b, 0x67, 0x00, 0xa0, 0x03, 0x28, 0xf6, 0x48, 0xbb, 0x8b, 0x1a, 0x87, 0x93, 0x8d, 0xbe};
@interface YelpResultsViewController ()

@end

@implementation YelpResultsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor colorWithPatternImage: [UIImage imageNamed:@"final.png"]];
    self.messageLabel.text = @"Tap on the mic";
    self.activityIndicator.hidden = YES;
    
    if (!self.tableViewDisplayDataArray) {
        self.tableViewDisplayDataArray = [[NSMutableArray alloc] init];
    }
    
    self.appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    [self.appDelegate updateCurrentLocation];
    [self.appDelegate setupSpeechKitConnection];
    
    self.searchTextField.returnKeyType = UIReturnKeySearch;
    self.resultTable.delegate = self;
    self.resultTable.dataSource = self;
    [self findNearByRestaurantsFromYelpbyCategory: _subcategory];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


# pragma mark - TableView Datasource and Delegate methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.tableViewDisplayDataArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ResultsTableViewCell *cell = (ResultsTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"SearchResultTableViewCell"];
    Restaurant *restaurantObj = (Restaurant *)[self.tableViewDisplayDataArray objectAtIndex:indexPath.row];
    
    cell.nameLabel.text = restaurantObj.name;
    cell.addressLabel.text = restaurantObj.address;
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
        NSData *thumbImageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:restaurantObj.thumbURL]];
        NSData *ratingImageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:restaurantObj.ratingURL]];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            cell.placeImage.image = [UIImage imageWithData:thumbImageData];
            cell.ratingsImage.image = [UIImage imageWithData:ratingImageData];
        });
    });
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Restaurant *restaurantObj = (Restaurant *)[self.tableViewDisplayDataArray objectAtIndex:indexPath.row];
    
    if (restaurantObj.yelpURL) {
        UIApplication *app = [UIApplication sharedApplication];
        [app openURL:[NSURL URLWithString:restaurantObj.yelpURL]];
    }
}

# pragma mark - Textfield Delegate Method and Method to handle Button Touch-up Event

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if ([self.searchTextField isFirstResponder]) {
        [self.searchTextField resignFirstResponder];
    }
    
    return YES;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    if ([self.searchTextField isFirstResponder]) {
        [self.searchTextField resignFirstResponder];
    }
}

# pragma mark - when record button is tapped

- (IBAction)recordButtonTapped:(id)sender {
    self.recordButton.selected = !self.recordButton.isSelected;
    
    // This will initialize a new speech recognizer instance
    if (self.recordButton.isSelected) {
        self.voiceSearch = [[SKRecognizer alloc] initWithType:SKSearchRecognizerType
                                                    detection:SKShortEndOfSpeechDetection
                                                     language:@"en_US"
                                                     delegate:self];
    }
    
    // This will stop existing speech recognizer processes
    else {
        if (self.voiceSearch) {
            [self.voiceSearch stopRecording];
            [self.voiceSearch cancel];
        }
    }
}


# pragma mark - SKRecognizer Delegate Methods

- (void)recognizerDidBeginRecording:(SKRecognizer *)recognizer {
    self.messageLabel.text = @"Listening..";
}

- (void)recognizerDidFinishRecording:(SKRecognizer *)recognizer {
    self.messageLabel.text = @"Done Listening..";
}

- (void)recognizer:(SKRecognizer *)recognizer didFinishWithResults:(SKRecognition *)results {
    long numOfResults = [results.results count];
    
    if (numOfResults > 0) {
        // update the text of text field with best result from SpeechKit
        self.searchTextField.text = [results firstResult];
    }
    
    self.recordButton.selected = !self.recordButton.isSelected;
    
    // This will extract category filter from search text
    NSString *yelpCategoryFilter = [self getYelpCategoryFromSearchText];
    
    // This will find nearby restaurants by category
    [self findNearByRestaurantsFromYelpbyCategory:yelpCategoryFilter];
    
    if (self.voiceSearch) {
        [self.voiceSearch cancel];
    }
}

- (void)recognizer:(SKRecognizer *)recognizer didFinishWithError:(NSError *)error suggestion:(NSString *)suggestion {
    self.recordButton.selected = NO;
    self.messageLabel.text = @"Connection error";
    self.activityIndicator.hidden = YES;
    
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                    message:[error localizedDescription]
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
}

- (NSString *)getYelpCategoryFromSearchText {
    NSString *categoryFilter = self.searchTextField.text;
    
//    if ([[self.searchTextField.text componentsSeparatedByString:@" restaurant"] count] > 1) {
//        NSCharacterSet *separator = [NSCharacterSet whitespaceAndNewlineCharacterSet];
//        NSArray *trimmedWordArray = [[[self.searchTextField.text componentsSeparatedByString:@"restaurant"] firstObject] componentsSeparatedByCharactersInSet:separator];
//        
//        if ([trimmedWordArray count] > 2) {
//            int objectIndex = (int)[trimmedWordArray count] - 2;
//            categoryFilter = [trimmedWordArray objectAtIndex:objectIndex];
//        }
//        
//        else {
//            categoryFilter = [trimmedWordArray objectAtIndex:0];
//        }
//    }
//    
//    else if (([[self.searchTextField.text componentsSeparatedByString:@" restaurant"] count] <= 1)
//             && self.searchTextField.text &&  self.searchTextField.text.length > 0){
//        categoryFilter = self.searchTextField.text;
//    }
    
    return categoryFilter;
}

- (void)findNearByRestaurantsFromYelpbyCategory:(NSString *)categoryFilter {
    if (categoryFilter && categoryFilter.length > 0) {
//        if (([CLLocationManager authorizationStatus] != kCLAuthorizationStatusDenied)
//            && self.appDelegate.currentUserLocation &&
//            self.appDelegate.currentUserLocation.coordinate.latitude) {
//            
            [self.tableViewDisplayDataArray removeAllObjects];
            [self.resultTable reloadData];
            
            self.messageLabel.text = @"Fetching results..";
            self.activityIndicator.hidden = NO;
            
            self.yelpService = [[YelpAPIService alloc] init];
            self.yelpService.delegate = self;
            
            self.searchCriteria = categoryFilter;
            
            [self.yelpService searchNearByRestaurantsByFilter:[categoryFilter lowercaseString] atLatitude:39.9500 andLongitude:-75.1667];
//        }
        
//        else {
//            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Location is Disabled"
//                                                            message:@"Enable it in settings and try again"
//                                                           delegate:nil
//                                                  cancelButtonTitle:@"OK"
//                                                  otherButtonTitles:nil];
//            [alert show];
//        }
    }
}

# pragma mark - Yelp API Delegate Method

-(void)loadResultWithDataArray:(NSArray *)resultArray {
    self.messageLabel.text = @"Tap on the mic";
    self.activityIndicator.hidden = YES;
    
    self.tableViewDisplayDataArray = [resultArray mutableCopy];
    [self.resultTable reloadData];
    
    if (self.isSpeaking) {
        [self.vocalizer cancel];
    }
    
    self.isSpeaking = YES;
    self.vocalizer = [[SKVocalizer alloc] initWithLanguage:@"en_US" delegate:self];
    
    if ([self.tableViewDisplayDataArray count] > 0) {
        [self.vocalizer speakString:[NSString stringWithFormat:@"I found %lu %@ ",
                                     (unsigned long)[self.tableViewDisplayDataArray count],
                                     self.searchCriteria]];
    }
    
    else {
        [self.vocalizer speakString:[NSString stringWithFormat:@"I could not find any %@ ",
                                     self.searchCriteria]];
    }
}


- (void)vocalizer:(SKVocalizer *)vocalizer willBeginSpeakingString:(NSString *)text {
    self.isSpeaking = YES;
}

- (void)vocalizer:(SKVocalizer *)vocalizer didFinishSpeakingString:(NSString *)text withError:(NSError *)error {
    if (error !=nil) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                        message:[error localizedDescription]
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        
        if (self.isSpeaking) {
            [self.vocalizer cancel];
        }
    }
    
    self.isSpeaking = NO;
}

@end
