//
//  UsefullMobileView.m
//  usefulMobile
//
//  Created by Serge Alain on 15/03/2016.
//  Copyright © 2016 alanwu. All rights reserved.
//

#import "UsefullMobileView.h"
#import "mobileOne.h"
#import "mobileTwo.h"
#import "mobileTree.h"


@interface UsefullMobileView ()

@end

@implementation UsefullMobileView

static NSString *CellIdentifier = @"CellIdentifier";
static NSString *CellIdentifier1 = @"CellIdentifier";
static NSString *CellIdentifier2 = @"CellIdentifier";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[mobileOne class]  forCellReuseIdentifier:CellIdentifier];
    [self.tableView registerClass:[mobileTwo  class] forCellReuseIdentifier:CellIdentifier1];
    [self.tableView registerClass:[mobileTree  class] forCellReuseIdentifier:CellIdentifier2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    
    if (section == 0) {
        return 2;            // Section 0, row 2
    } else if (section ==1) {
        return 3;             // Section 1, row 3
    } else return 4;          // Section 3, row 4
    
    //return 0;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    NSString *title = nil;
    // setting headers for each section
   
    if (section == 0) {
        title = @"Section one (2)";
    } else if (section == 1) {
        
        title = @" Section Two (3)";
    } else {
        
        title = @"Section 3  (4)";
    }
    
    return title;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"mobileOne";
    static NSString *CellIdentifier1 = @"mobileTwo";
    static NSString *CellIdentifier2 = @"mobileTree";
    
    if (indexPath.section == 0) {
        mobileOne *cell0 = (mobileOne *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (!cell0) {
            cell0 = [[mobileOne alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        }
        if (indexPath.section == 0 && indexPath.row ==0) {
            [cell0.nameLabelOneA setText:[NSString stringWithFormat:@"Wu Anna"]];
            cell0.pictureIcone.image = [UIImage imageNamed:@"phone.png"];

        }else {
            [cell0.nameLabelOneB setText:[NSString stringWithFormat:@"Wu Rong wei"]];
            cell0.pictureIcone.image = [UIImage imageNamed:@"phone.png"];
        }
        
        
        return cell0;

    } else if (indexPath.section == 1) {
            mobileTwo *cell1 = (mobileTwo *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier1];
        if (!cell1) {
            cell1 = [[mobileTwo alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier1];
        }
        
        if (indexPath.section == 1 && indexPath.row ==0) {
            [cell1.nameLabelTwoA setText:[NSString stringWithFormat:@"Moussirou Serge Alain"]];
            cell1.pictureIcone.image = [UIImage imageNamed:@"phone.png"];
        } else if (indexPath.section == 1 && indexPath.row == 1){
            
            [cell1.nameLabelTwoB setText:[NSString stringWithFormat:@"Ngombi Jean De Dieu"]];
            cell1.pictureIcone.image = [UIImage imageNamed:@"phone.png"];
        } else {
            [cell1.nameLabelTwoC setText:[NSString stringWithFormat:@"Bissagou Murielle Centra"]];
            cell1.pictureIcone.image = [UIImage imageNamed:@"phone.png"];
            
        }
        
        return cell1;
        
    } else {
        
        mobileTree *cell2 = (mobileTree *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier2];
        if (!cell2) {
            cell2 = [[mobileTree alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier2];
        }
        
        if (indexPath.section == 2 && indexPath.row == 0) {
            [cell2.nameLabelTreeA setText:[NSString stringWithFormat:@"Mavioga Tony Anderson"]];
            cell2.pictureIcone.image = [UIImage imageNamed:@"phone.png"];

        } else if (indexPath.section == 2 && indexPath.row == 1) {
            
            [cell2.nameLabelTreeB setText:[NSString stringWithFormat:@"Guy Roger Nzamba"]];
            cell2.pictureIcone.image = [UIImage imageNamed:@"phone.png"];
        } else if (indexPath.section == 2 && indexPath.row == 2) {
            
            [cell2.nameLabelTreeC setText:[NSString stringWithFormat:@"Moussavou Florence"]];
            cell2.pictureIcone.image = [UIImage imageNamed:@"phone.png"];
        } else  {
            
            [cell2.nameLabelTreeD setText:[NSString stringWithFormat:@"Moussounda patrick"]];
            cell2.pictureIcone.image = [UIImage imageNamed:@"phone.png"];
            
        }
        
        return cell2;
        
    }
    
     return nil;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 50;
}

-(CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    
    return 44;
}

-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
}


/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
