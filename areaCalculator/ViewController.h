//
//  ViewController.h
//  areaCalculator
//
//  Created by user167164 on 1/28/21.
//  Copyright © 2021 CIAT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UIPickerViewDataSource, UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *TitleLabel1;
@property (weak, nonatomic) IBOutlet UILabel *TitleLabel2;
@property (weak, nonatomic) IBOutlet UILabel *subTitleLabel1;
@property (weak, nonatomic) IBOutlet UILabel *subTitleLabel2;
@property (nonatomic, strong) NSArray *ShapeList;
@property (weak, nonatomic) IBOutlet UITextField *AreaTxt1;
@property (weak, nonatomic) IBOutlet UITextField *AreaTxt2;
- (IBAction)Compute:(id)sender;
@property int trackShape;
- (IBAction)AreaTxtFld:(id)sender;
- (IBAction)AreaTxtFld2:(id)sender;
@property (strong, nonatomic) IBOutlet UIPickerView *picker;
@property (weak, nonatomic) IBOutlet UIButton *compute;

@end
