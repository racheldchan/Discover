//
//  MainViewController.h
//  Discover
//
//  Created by Ahmed Zahra on 4/23/15.
//  Copyright (c) 2015 Ahmed Zahra & Rachel Chan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *inputBox;
@property (weak, nonatomic) IBOutlet UITextField *category;
@property (weak, nonatomic) NSString * categoryName;
@property (weak, nonatomic) NSString * subCategoryName;

@end

