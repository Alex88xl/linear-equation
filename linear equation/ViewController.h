//
//  ViewController.h
//  linear equation
//
//  Created by Alex Wrede on 15.06.12.
//  Copyright (c) 2012 Alex Wrede. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *numberA;
@property (strong, nonatomic) IBOutlet UITextField *numberB;
@property (strong, nonatomic) IBOutlet UITextField *numberC;
@property (strong, nonatomic) IBOutlet UITextField *numberD;
@property (strong, nonatomic) IBOutlet UITextField *numberE;
@property (strong, nonatomic) IBOutlet UITextField *numberF;

- (IBAction)setParameterForLinearEquation:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *loesung1;
@property (strong, nonatomic) IBOutlet UILabel *loesung2;
@property (strong, nonatomic) IBOutlet UILabel *loesung3;

@property (strong, nonatomic) IBOutlet UITextField *loesungsSumme;

- (IBAction)resetMainView:(id)sender;

- (IBAction)informationForProcessView:(id)sender;

- (IBAction)ProcessViewLoadAndCheckForData:(id)sender;


@end
