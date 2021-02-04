//
//  TableViewController.m
//  areaCalculator
//
//  Created by user167164 on 1/28/21.
//  Copyright © 2021 CIAT. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

@synthesize ShapeList;

- (void)viewDidLoad {
    [super viewDidLoad];
    // initialize the ShapeList array to hold the shapes
    ShapeList = [[NSArray alloc] initWithObjects: @"Circle = 3.141*r*r", @"Cylinder = 2*3.141*r*r + h(2*3.141*r)", @"Square = l*l", @"Rectangle = l*w", nil];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
// return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
// return the number of rows
    return [ShapeList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.text = [self.ShapeList objectAtIndex:indexPath.row];
    return cell;
}

@end
