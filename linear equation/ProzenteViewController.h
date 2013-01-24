//
//  ProzenteViewController.h
//  linear equation
//
//  Created by Alex Wrede on 04.01.13.
//  Copyright (c) 2013 Alex Wrede. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProzenteViewController : UIViewController

- (IBAction)ProzenteBack:(id)sender;

@property (strong, nonatomic) IBOutlet UITextField *betragP;
@property (strong, nonatomic) IBOutlet UITextField *prozentP;
@property (strong, nonatomic) IBOutlet UISegmentedControl *mwstP_Auswahl;

- (IBAction)loesenP:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *zuZahlenP;
@property (strong, nonatomic) IBOutlet UILabel *mwstP_19;
@property (strong, nonatomic) IBOutlet UILabel *verdienstP;

@end
