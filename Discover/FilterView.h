//
//  FilterView.h
//  Discover
//
//  Created by Ahmed Zahra on 5/3/15.
//  Copyright (c) 2015 Ahmed Zahra & Rachel Chan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"

@interface FilterView : UIViewController <UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *inputBox;
@property (weak, nonatomic) IBOutlet UITableView *resultTableView;
@property (nonatomic, retain) NSMutableArray *autocompleteOptions;
@property (nonatomic, retain) NSMutableArray *pasteOptions;
@property (weak, nonatomic) NSString* selected;
@end
