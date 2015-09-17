//
//  FilterSelectionView.h
//  Discover
//
//  Created by Ahmed Zahra on 5/2/15.
//  Copyright (c) 2015 Ahmed Zahra & Rachel Chan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FilterSelectionView : UITableViewController

@property (nonatomic, retain) NSMutableArray *autocompleteOptions;
@property (nonatomic, retain) NSMutableArray *pasteOptions;
@property (weak, nonatomic) IBOutlet UITextField *inputBox;
@property (weak, nonatomic) NSString* selected;
@end
