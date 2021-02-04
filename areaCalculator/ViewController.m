//
//  ViewController.m
//  areaCalculator
//
//  Created by user167164 on 1/28/21.
//  Copyright © 2021 CIAT. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize ShapeList;
@synthesize picker;
@synthesize TitleLabel1;
@synthesize TitleLabel2;
@synthesize subTitleLabel1;
@synthesize subTitleLabel2;
@synthesize AreaTxt1;
@synthesize AreaTxt2;
@synthesize trackShape;
@synthesize compute;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    ShapeList = [[NSArray alloc] initWithObjects:@"Circle", @"Cylinder", @"Square", @"Rectangle", nil];
    AreaTxt1.hidden = YES;
    AreaTxt2.hidden = YES;
    compute.hidden = YES;
}

- (IBAction)Compute:(id)sender {
    int area=0;
    switch (trackShape) {
        case 0:
            area = 3.141*[AreaTxt1.text intValue]*[AreaTxt1.text intValue];
            break;
        case 1:
            area = (2*3.141*[AreaTxt1.text intValue]*[AreaTxt1.text intValue]) + [AreaTxt2.text intValue]*(2*3.141*[AreaTxt1.text intValue]);
            break;
        case 2:
            area = [AreaTxt1.text intValue]*[AreaTxt1.text intValue];
            break;
        case 3:
            area = [AreaTxt1.text intValue]*[AreaTxt2.text intValue];
            break;
        default:
            break;
    }
    TitleLabel2.hidden = NO;
    TitleLabel2.text = [NSString stringWithFormat:@"And the area is %i", area];
    AreaTxt1.text = @"";
    AreaTxt2.text = @"";
    
    [self.view endEditing:YES];
}

- (IBAction)AreaTxtFld:(id)sender {
    [self.view resignFirstResponder];
}

- (IBAction)AreaTxtFld2:(id)sender {
    [self.view resignFirstResponder];
}

#pragma Picker View Methods
// method identifying the number of components in a picker
- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}
// method identifying the number of rows in the component
- (NSInteger) pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component
{
    return [ShapeList count];
}

// method that displays the items in the picker
-(NSString*) pickerView:(UIPickerView *)pickerView
titleForRow: (NSInteger) row
forComponent: (NSInteger) component
{
    return [ShapeList objectAtIndex:row];
}
- (void) pickerView:(UIPickerView *)pickerView
didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    switch (row) {
        case 0:
            TitleLabel1.text = @"You selected a Circle! ";
            subTitleLabel1.text = @"Enter the radius here";
            subTitleLabel2.hidden = YES;
            TitleLabel2.hidden =  YES;
            AreaTxt1.hidden = NO;
            AreaTxt2.hidden = YES;
            compute.hidden = NO;
            trackShape = 0;
            break;
        case 1:
            TitleLabel2.hidden = YES;
            subTitleLabel1.text = @"Enter the radius here";
            subTitleLabel2.hidden = NO;
            subTitleLabel2.text = @"Enter the height here";
            TitleLabel1.text = @"You selected a Cylinder! ";
            AreaTxt1.hidden = NO;
            AreaTxt2.hidden = NO;
            compute.hidden = NO;
            trackShape = 1;
            break;
        case 2:
            TitleLabel2.hidden = YES;
            subTitleLabel1.text = @"Enter the side here";
            subTitleLabel2.hidden = YES;
            TitleLabel1.text = @"You selected a Square! ";
            AreaTxt1.hidden = NO;
            AreaTxt2.hidden = YES;
            compute.hidden = NO;
            trackShape = 2;
            break;
        case 3:
            TitleLabel2.hidden = YES;
            subTitleLabel1.text = @"Enter the length here";
            subTitleLabel2.hidden = NO;
            subTitleLabel2.text = @"Enter the width here";
            TitleLabel1.text = @"You selected a Rectangle! ";
            AreaTxt1.hidden = NO;
            AreaTxt2.hidden = NO;
            compute.hidden = NO;
            trackShape = 3;
            break;
        default:
            break;
    }
}

@end
