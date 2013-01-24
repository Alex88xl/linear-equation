//
//  QuadratischViewController.h
//  linear equation
//
//  Created by Alex Wrede on 11.11.12.
//  Copyright (c) 2012 Alex Wrede. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuadratischViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *numberA_Q;
@property (strong, nonatomic) IBOutlet UITextField *numberB_Q;
@property (strong, nonatomic) IBOutlet UITextField *numberC_Q;

- (IBAction)loesen_Q:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *sp_Q;
@property (strong, nonatomic) IBOutlet UILabel *dis_Q;
@property (strong, nonatomic) IBOutlet UILabel *ns_Q;

- (IBAction)backButton_Q:(id)sender;

@end
