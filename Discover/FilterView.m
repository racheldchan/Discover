//
//  FilterView.m
//  Discover
//
//  Created by Ahmed Zahra on 5/3/15.
//  Copyright (c) 2015 Ahmed Zahra & Rachel Chan. All rights reserved.
//

#import "FilterView.h"

@interface FilterView ()
@end

@implementation FilterView

- (void)viewDidLoad {
    [super viewDidLoad];
    self.autocompleteOptions = [[NSMutableArray alloc] init];
    self.pasteOptions = [[NSMutableArray alloc] initWithObjects: @"Active Life", @"Arts & Entertainment", @"Automotives", @"Beauty & Spas", @"Education", @"Event Planning & Services", @"Financial Services", @"Food", @"Health & Medical", @"Home Services", @"Hotel & Travel", @"Local Services", @"Mass Media", @"Nightlife", @"Pets", @"Professional Services", @"Public Services & Government", @"Real Estate", @"Religious Organizations", @"Restaurants", @"Shopping", nil];
    self.inputBox.delegate = self;
    self.resultTableView.delegate = self;
    self.resultTableView.dataSource = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)searchAutocompleteEntriesWithSubstring:(NSString *)substring {
    
    // Put anything that starts with this substring into the autocompleteUrls array
    // The items in this array is what will show up in the table view
    [_autocompleteOptions removeAllObjects];
    for(NSString *curString in _pasteOptions) {
        NSRange substringRange = [curString rangeOfString:substring];
        if (substringRange.location == 0) {
            [_autocompleteOptions addObject:curString];
        }
    }
    [self.resultTableView reloadData];
}

#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Potentially incomplete method implementation.
//    // Return the number of sections.
//    return 0;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    return [_pasteOptions count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = nil;
    static NSString *AutoCompleteRowIdentifier = @"Option";
    cell = [tableView dequeueReusableCellWithIdentifier:AutoCompleteRowIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault reuseIdentifier:AutoCompleteRowIdentifier];
    }
    
    cell.textLabel.text = [_pasteOptions objectAtIndex:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *selectedCell = [tableView cellForRowAtIndexPath:indexPath];
    _inputBox.text = selectedCell.textLabel.text;
    _selected = selectedCell.textLabel.text;
}


- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"Back"]) {
        MainViewController *vc = (MainViewController *)[segue destinationViewController];
        vc.categoryName = _selected;
    }
}


@end
