//
//  TriangleViewController.h
//  linear equation
//
//  Created by Alex Wrede on 02.07.12.
//  Copyright (c) 2012 Alex Wrede. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TriangleViewController : UIViewController

- (IBAction)TriangleBackButton:(id)sender;

@property (strong, nonatomic) IBOutlet UITextField *variableX;
@property (strong, nonatomic) IBOutlet UITextField *variableY;
@property (strong, nonatomic) IBOutlet UITextField *variableZ;

@property (strong, nonatomic) IBOutlet UILabel *loesungA;
@property (strong, nonatomic) IBOutlet UILabel *loesungB;
@property (strong, nonatomic) IBOutlet UILabel *loesungC;

- (IBAction)loesungRechnenUndAnzeigen:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *wertA;
@property (strong, nonatomic) IBOutlet UILabel *wertB;
@property (strong, nonatomic) IBOutlet UILabel *wertC;

@end