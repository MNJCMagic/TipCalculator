//
//  ViewController.m
//  TipCalculator
//
//  Created by Mike Cameron on 2018-04-20.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;
@property (weak, nonatomic) IBOutlet UITextField *tipPercentageField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.billAmountTextField.keyboardType = UIKeyboardTypeNumbersAndPunctuation;
    self.tipPercentageField.keyboardType = UIKeyboardTypeNumbersAndPunctuation;


    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)calculateTip:(UIButton *)sender {
    float tip = [self.billAmountTextField.text integerValue] * ([self.tipPercentageField.text integerValue] * 0.01);
    NSLog(@"%.2f", tip);
    [self setLabel:tip];
    
}

-(void)setLabel:(float)tip {
    self.tipAmountLabel.text = [NSString stringWithFormat:@"$%.2f", tip];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
