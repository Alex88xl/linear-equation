//
//  ProzenteViewController.m
//  linear equation
//
//  Created by Alex Wrede on 04.01.13.
//  Copyright (c) 2013 Alex Wrede. All rights reserved.
//

#import "ProzenteViewController.h"

@interface ProzenteViewController ()

@end

@implementation ProzenteViewController

/*@synthesize betragP;
@synthesize prozentP;
@synthesize mwstP_Auswahl;
@synthesize zuZahlenP;
@synthesize mwstP_19;
@synthesize verdienstP;*/

//variablen
NSString *mwst_p_var_string =@"";

float betrag_p = 0;
float prozent_p = 0;
float mwst_p_var = 0;
float zuZahlen_p = 0;
float mwst_p = 0;
float verdienst_p = 0;

UISegmentedControl *mwst_p_Auswahl;

NSUserDefaults *mwst_userDefault_USER;

//Methoden
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
	// Do any additional setup after loading the view
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ProzenteBack:(id)sender
{
	[self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)loesenP:(id)sender
{
	if (_mwstP_Auswahl.selectedSegmentIndex == 0)
	{
		mwst_p_var = 19;
	}
	else if (_mwstP_Auswahl.selectedSegmentIndex == 1)
	{
		mwst_p_var = 7;
	}
	
	//Beachten!!!!!
	//mwst_p_var = [mwst_p_var_string floatValue];
	
	betrag_p = [_betragP.text floatValue];
	prozent_p = [_prozentP.text floatValue];
	
	zuZahlen_p = betrag_p - (betrag_p / 100 * prozent_p);
	mwst_p = betrag_p - (betrag_p * 100 / (100 + mwst_p_var));
	verdienst_p = zuZahlen_p - mwst_p;
	
	_zuZahlenP.text = [NSString stringWithFormat:@" %.2f € ", zuZahlen_p];
	_mwstP_19.text = [NSString stringWithFormat:@" %.2f € Mwst", mwst_p];
	_verdienstP.text = [NSString stringWithFormat:@" %.2f €", verdienst_p];
}

@end
