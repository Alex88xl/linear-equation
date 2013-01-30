//
//  QuadratischViewController.m
//  linear equation
//
//  Created by Alex Wrede on 11.11.12.
//  Copyright (c) 2012 Alex Wrede. All rights reserved.
//

#import "QuadratischViewController.h"

@interface QuadratischViewController ()

@end

@implementation QuadratischViewController

@synthesize numberA_Q;
@synthesize numberB_Q;
@synthesize numberC_Q;
@synthesize sp_Q;
@synthesize dis_Q;
@synthesize ns_Q;


//variablen deklerieren


float numA_Q = 0;
float numB_Q = 0;
float numC_Q = 0;


float x_Q = 0;
float y_Q = 0;

float x1 = 0;
float x2 = 0;

float d = 0;

 
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loesen_Q:(id)sender
{
	numA_Q = [numberA_Q.text floatValue];
	numB_Q = [numberB_Q.text floatValue];
	numC_Q = [numberC_Q.text floatValue];
	
	d  = numB_Q * numB_Q - 4 * numA_Q * numC_Q;
	
	x_Q  = -numB_Q / 2 / numA_Q;
	y_Q  = numC_Q * 1 - numB_Q * numB_Q / 4 / numA_Q;
	x1 = (-numB_Q + sqrtf(d)) / 2 / numA_Q;
	x2 = (-numB_Q - sqrtf(d)) / 2 / numA_Q;
	
	sp_Q.text  = [NSString stringWithFormat:@" %.2f | %.2f ", x_Q, y_Q];
	dis_Q.text = [NSString stringWithFormat:@" %.2f ", d];
	ns_Q.text  = [NSString stringWithFormat:@" %.2f | %.2f ", x1, x2];
}

- (IBAction)backButton_Q:(id)sender
{
	[self dismissViewControllerAnimated:YES completion:nil];
}
@end
