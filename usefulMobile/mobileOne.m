//
//  mobileOne.m
//  usefulMobile
//
//  Created by Serge Alain on 15/03/2016.
//  Copyright © 2016 alanwu. All rights reserved.
//

#import "mobileOne.h"

@implementation mobileOne

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];

    if (!self) {
        return nil;
    }
    
    
    
    if (self) {
        
        
        //nameLabelOneA
        self.nameLabelOneA = [[UILabel alloc] init];
        self.nameLabelOneA = [[UILabel alloc] initWithFrame:CGRectMake(15, 17, +150, +16)];
        [self.nameLabelOneA setTextColor:[UIColor colorWithRed:52.0/255.0  green:52.0/255.0 blue:25.0/255.0 alpha:1.0]];
        [self.nameLabelOneA setFont:[UIFont boldSystemFontOfSize:15]];
        
        
        //nameLabelOneB
        self.nameLabelOneB = [[UILabel alloc] init];
        self.nameLabelOneB = [[UILabel alloc] initWithFrame:CGRectMake(15, 17, +150, +16)];
        [self.nameLabelOneB setTextColor:[UIColor colorWithRed:52.0/255.0  green:52.0/255.0 blue:52.0/255.0 alpha:1.0]];
        [self.nameLabelOneB setFont:[UIFont boldSystemFontOfSize:15]];
        
        
        //Image
        self.pictureIcone = [[UIImageView alloc] init];
        self.pictureIcone.backgroundColor = [UIColor clearColor];
        self.pictureIcone.frame = CGRectMake(([UIScreen mainScreen].bounds.size.width / 1.1)-10, 17,17,17);

        //self.pictureIcone.backgroundColor = [UIColor colorWithRed:24.0/255.0  green:180.0/255.0  blue:238.0/255.0  alpha:1];

        
        
        // Add Main Label to Content View
        
        [self.contentView addSubview:self.nameLabelOneA];
        [self.contentView addSubview:self.pictureIcone];
        [self.contentView addSubview:self.nameLabelOneB];
        
        
    }
    
    return self;
    
}

@end
