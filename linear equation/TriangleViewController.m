//
//  TriangleViewController.m
//  linear equation
//
//  Created by Alex Wrede on 02.07.12.
//  Copyright (c) 2012 Alex Wrede. All rights reserved.
//

#import "TriangleViewController.h"

@interface TriangleViewController ()

@end

@implementation TriangleViewController
@synthesize wertA;
@synthesize wertB;
@synthesize wertC;
@synthesize variableX;
@synthesize variableY;
@synthesize variableZ;
@synthesize loesungA;
@synthesize loesungB;
@synthesize loesungC;

//initialisierung der gesuchten Werte
float a,b,c = 0;

//initialisierung der gegebenen Werte
float x,y,z = 0;

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

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)TriangleBackButton:(id)sender
{
	[self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)loesungRechnenUndAnzeigen:(id)sender
{
	//Auslesen der gegebenen Werte aus den Textfeldern
	x = [variableX.text floatValue];
	y = [variableY.text floatValue];
	z = [variableZ.text floatValue];
	
	//Zuweisung der gesuchten Werte mit den Ergebnissen
	a = -x/2 +y/2 +z/2 +x -y;
	b =  x/2 -y/2 -z/2    +y;
	c = -x/2 +y/2 +z/2      ;
	
	//Eintragen der Werte in das Vorgesehene Feld
	loesungA.text = [NSString stringWithFormat:@"%.2f",a];
	loesungB.text = [NSString stringWithFormat:@"%.2f",b];
	loesungC.text = [NSString stringWithFormat:@"%.2f",c];
	
	//Eintragen der Werte in die Lösungssumme
	wertA.text = [NSString stringWithFormat:@"%.2f",a];
	wertB.text = [NSString stringWithFormat:@"%.2f",b];
	wertC.text = [NSString stringWithFormat:@"%.2f",c];
}
@end
