//
//  SubFilterView.h
//  Discover
//
//  Created by Ahmed Zahra on 5/3/15.
//  Copyright (c) 2015 Ahmed Zahra & Rachel Chan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SubFilterView : UIViewController <UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *inputBox;
@property (weak, nonatomic) IBOutlet UITableView *resultTableView;
//@property (nonatomic, retain) NSMutableArray *autocompleteOptions;
//@property (nonatomic, retain) NSMutableArray * activeLife;
//@property (nonatomic, retain) NSMutableArray * arts;
//@property (nonatomic, retain) NSMutableArray * automotives;
//@property (nonatomic, retain) NSMutableArray * beauty;
//@property (nonatomic, retain) NSMutableArray * bicycles;
//@property (nonatomic, retain) NSMutableArray * education;
//@property (nonatomic, retain) NSMutableArray * eventPlanning;
//@property (nonatomic, retain) NSMutableArray * financial;
//@property (nonatomic, retain) NSMutableArray * food;
//@property (nonatomic, retain) NSMutableArray * health;
//@property (nonatomic, retain) NSMutableArray * hotels;
//@property (nonatomic, retain) NSMutableArray * localServices;
//@property (nonatomic, retain) NSMutableArray * nightLife;
//@property (nonatomic, retain) NSMutableArray * pet;
//@property (nonatomic, retain) NSMutableArray * professionalServices;
//@property (nonatomic, retain) NSMutableArray * activeLife;
//@property (nonatomic, retain) NSMutableArray * activeLife;
@property (nonatomic, retain) NSMutableArray* pasteOptions;
@property (nonatomic, retain) NSMutableArray* autocompleteOptions;
@property (nonatomic, retain) NSString * category;
@property (weak, nonatomic) NSString* selected;

@end
