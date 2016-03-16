//
//  mobileTwo.m
//  usefulMobile
//
//  Created by Serge Alain on 15/03/2016.
//  Copyright © 2016 alanwu. All rights reserved.
//

#import "mobileTwo.h"

@implementation mobileTwo


-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (!self) {
        return nil;
    }
    
    if (self) {
        
        
        //nameLabelOneA
        self.nameLabelTwoA = [[UILabel alloc] init];
        self.nameLabelTwoA = [[UILabel alloc] initWithFrame:CGRectMake(15, 17, +220, +16)];
        [self.nameLabelTwoA setTextColor:[UIColor colorWithRed:52.0/255.0  green:52.0/255.0 blue:25.0/255.0 alpha:1.0]];
        [self.nameLabelTwoA setFont:[UIFont boldSystemFontOfSize:18]];
        
        
        //nameLabelOneB
        self.nameLabelTwoB = [[UILabel alloc] init];
        self.nameLabelTwoB = [[UILabel alloc] initWithFrame:CGRectMake(15, 17, +220, +16)];
        [self.nameLabelTwoB setTextColor:[UIColor colorWithRed:52.0/255.0  green:52.0/255.0 blue:25.0/255.0 alpha:1.0]];
        [self.nameLabelTwoB setFont:[UIFont boldSystemFontOfSize:18]];
        
        
        //nameLabelOneC
        self.nameLabelTwoC = [[UILabel alloc] init];
        self.nameLabelTwoC = [[UILabel alloc] initWithFrame:CGRectMake(15, 17, +220, +16)];
        [self.nameLabelTwoC setTextColor:[UIColor colorWithRed:52.0/255.0  green:52.0/255.0 blue:25.0/255.0 alpha:1.0]];
        [self.nameLabelTwoC setFont:[UIFont boldSystemFontOfSize:18]];
        
        //Image
        self.pictureIcone = [[UIImageView alloc] init];
        self.pictureIcone.backgroundColor = [UIColor clearColor];
        self.pictureIcone.frame = CGRectMake(([UIScreen mainScreen].bounds.size.width / 1.1)-10, 17,17,17);
        
        
        
        // Add Main Label to Content View
        
        [self.contentView addSubview:self.nameLabelTwoA];
        [self.contentView addSubview:self.pictureIcone];
        [self.contentView addSubview:self.nameLabelTwoB];
        [self.contentView addSubview:self.nameLabelTwoC];

    }
    
    
    
    
    
    return self;
}

@end
