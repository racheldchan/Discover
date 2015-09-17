//
//  ResultsTableViewCell.h
//  Discover
//
//  Created by Rachel Diana Chan on 4/30/15.
//  Copyright (c) 2015 Ahmed Zahra & Rachel Chan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ResultsTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *ratingsImage;
@property (weak, nonatomic) IBOutlet UIImageView *placeImage;
@property (weak, nonatomic) IBOutlet UILabel *addressLabel;

@end
