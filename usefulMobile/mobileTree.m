//
//  mobileTree.m
//  usefulMobile
//
//  Created by Serge Alain on 15/03/2016.
//  Copyright © 2016 alanwu. All rights reserved.
//

#import "mobileTree.h"

@implementation mobileTree


-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (!self) {
        return nil;
    }
    
    if (self) {
        
        
        //nameLabelOneA
        self.nameLabelTreeA = [[UILabel alloc] init];
        self.nameLabelTreeA = [[UILabel alloc] initWithFrame:CGRectMake(15, 17, +200, +16)];
        [self.nameLabelTreeA setTextColor:[UIColor colorWithRed:7.0/255.0  green:3.0/255.0 blue:2.0/255.0 alpha:1.0]];
        [self.nameLabelTreeA setFont:[UIFont boldSystemFontOfSize:15]];
        
        
        //nameLabelOneB
        self.nameLabelTreeB = [[UILabel alloc] init];
        self.nameLabelTreeB = [[UILabel alloc] initWithFrame:CGRectMake(15, 17, +200, +16)];
        [self.nameLabelTreeB setTextColor:[UIColor colorWithRed:7.0/255.0  green:3.0/255.0 blue:2.0/255.0 alpha:1.0]];
        [self.nameLabelTreeB setFont:[UIFont boldSystemFontOfSize:15]];
        
        
        //nameLabelOneC
        self.nameLabelTreeC = [[UILabel alloc] init];
        self.nameLabelTreeC = [[UILabel alloc] initWithFrame:CGRectMake(15, 17, +220, +16)];
        [self.nameLabelTreeC setTextColor:[UIColor colorWithRed:7.0/255.0  green:3.0/255.0 blue:2.0/255.0 alpha:1.0]];
        [self.nameLabelTreeC setFont:[UIFont boldSystemFontOfSize:15]];
        
        
        //nameLabelTreeD
        self.nameLabelTreeD = [[UILabel alloc] init];
        self.nameLabelTreeD = [[UILabel alloc] initWithFrame:CGRectMake(15, 17, +220, +16)];
        [self.nameLabelTreeD setTextColor:[UIColor colorWithRed:7.0/255.0  green:3.0/255.0 blue:2.0/255.0 alpha:1.0]];
        [self.nameLabelTreeD setFont:[UIFont boldSystemFontOfSize:15]];
        
        //Image
        self.pictureIcone = [[UIImageView alloc] init];
        self.pictureIcone.backgroundColor = [UIColor clearColor];
        self.pictureIcone.frame = CGRectMake(([UIScreen mainScreen].bounds.size.width / 1.1)-10, 17,17,17);
        
        
        
        // Add Main Label to Content View
        
        [self.contentView addSubview:self.nameLabelTreeA];
        [self.contentView addSubview:self.pictureIcone];
        [self.contentView addSubview:self.nameLabelTreeB];
        [self.contentView addSubview:self.nameLabelTreeC];
        [self.contentView addSubview:self.nameLabelTreeD];

        
    }
    
    
    
    
    
    return self;
}

@end


