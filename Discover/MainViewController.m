//
//  MainViewController.m
//  Discover
//
//  Created by Ahmed Zahra on 4/23/15.
//  Copyright (c) 2015 Ahmed Zahra & Rachel Chan. All rights reserved.
//

#import "MainViewController.h"
#import "SubFilterView.h"
#import "YelpResultsViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithPatternImage: [UIImage imageNamed:@"final.png"]];
    if ([_categoryName length] > 0) {
        _category.text = _categoryName;
    }
    if ([_subCategoryName length] > 0) {
        _inputBox.text = _subCategoryName;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)searchButton:(id)sender {
    if ([_categoryName length] > 0 && [_subCategoryName length] > 0) {

    }
    else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                        message:@"Please select a category and a sub category"
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    }
}



- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender  {
    if ([identifier isEqualToString:@"subCategory"]) {
        if ([_categoryName length] > 0) {
            return true;
        }
        else {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                        message:@"Please select a category"
                                                       delegate:nil
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:nil];
            [alert show];
            return false;
        }
    }
    if ([identifier isEqualToString:@"Results"]) {
        if ([_subCategoryName length] > 0) {
            return true;
        }
        else {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                            message:@"Please select a category and a sub category"
                                                           delegate:nil
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:nil];
            [alert show];
            return false;
        }
    }
    else {
        return true;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"subCategory"]) {
        SubFilterView *vc = (SubFilterView *)[segue destinationViewController];
        vc.category = _categoryName;
    }
    if ([segue.identifier isEqualToString:@"Results"]) {
        YelpResultsViewController *vc = (YelpResultsViewController *)[segue destinationViewController];
        vc.category = _categoryName;
        vc.subcategory = _subCategoryName;
    }
}
//- (void)searchAutocompleteEntriesWithSubstring:(NSString *)substring {
//    
//    // Put anything that starts with this substring into the autocompleteUrls array
//    // The items in this array is what will show up in the table view
//    [_autocompleteOptions removeAllObjects];
//    for(NSString *curString in _pasteOptions) {
//        NSRange substringRange = [curString rangeOfString:substring];
//        if (substringRange.location == 0) {
//            [_autocompleteOptions addObject:curString];
//        }
//    }
//    [_autocompleteTableView reloadData];
//}

//- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
//    if ([string length] == 0) {
//        _autocompleteTableView.hidden = YES;
//        _luckyButton.hidden = NO;
//    }
//    else {
//        _luckyButton.hidden = YES;
//        _autocompleteTableView.hidden = NO;
//    }
//    NSString *substring = [NSString stringWithString:textField.text];
//    substring = [substring stringByReplacingCharactersInRange:range withString:string];
//    [self searchAutocompleteEntriesWithSubstring:substring];
//    return YES;
//}

//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger) section {
//    return [_autocompleteOptions count];
//}

//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    UITableViewCell *cell = nil;
//    static NSString *AutoCompleteRowIdentifier = @"Option";
//    cell = [tableView dequeueReusableCellWithIdentifier:AutoCompleteRowIdentifier];
//    if (cell == nil) {
//        cell = [[UITableViewCell alloc]
//                 initWithStyle:UITableViewCellStyleDefault reuseIdentifier:AutoCompleteRowIdentifier];
//    }
//    
//    cell.textLabel.text = [_autocompleteOptions objectAtIndex:indexPath.row];
//    return cell;
//}
//
//
//- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
//    return YES;
//}
//
//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    
//    UITableViewCell *selectedCell = [tableView cellForRowAtIndexPath:indexPath];
//    _inputBox.text = selectedCell.textLabel.text;
//    
//}

@end
