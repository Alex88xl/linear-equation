//
//  ViewController.m
//  linear equation
//
//  Created by Alex Wrede on 15.06.12.
//  Copyright (c) 2012 Alex Wrede. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize loesung1;
@synthesize loesung2;
@synthesize loesung3;
@synthesize loesungsSumme;
@synthesize numberA;
@synthesize numberB;
@synthesize numberC;
@synthesize numberD;
@synthesize numberE;
@synthesize numberF;

//variable (int) zur Zählung der button klicks auf: setParameterForLinearEquation
int buttonKlicksForParameter = 1;
int ParameterButtonKlicks = 0;

//variablen zur Erfassung der benötigten Werte
float a,b,c,d,e,f = 0;

//variablen zur Erfassung der benötigten MATRIX Werte
float I,G,Z = 0;

//varibalen als "x" und "y" Werte zur Ergebnis darstellung
float x,y = 0;

//Array um Lösungssumme zu speichern und wieder zu geben
NSMutableArray* loesungsSummenArray;

//Array zum Speichern der Variablen
NSMutableArray* variablenMatrixArray;

//Neue Arrays zum auslesen der gespeicherten Daten aus "ProcessViewController" anlegen
NSMutableArray *variablenMatrixArray_3 = nil;
NSMutableArray *loesungsSummenArray_3 = nil;

//StandardUserDefaults declarieren
NSUserDefaults *standardUserDefaults_1;


- (void)viewDidLoad
{
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	loesung1.hidden = 1;
	loesung2.hidden = 1;
	loesung3.hidden = 1;
	
	//allocieren und initiieren des Arrays
	loesungsSummenArray = [[NSMutableArray alloc] init];
	variablenMatrixArray = [[NSMutableArray alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
	
	NSLog(@"didReceiveMemoryWarning on iPhone");
	
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)setParameterForLinearEquation:(id)sender
{
	//Addieren der button klicks
	ParameterButtonKlicks = buttonKlicksForParameter ++;
	
	//definierung der variablen durch die Zahlen in den Textfeldern "numberA" - "numberF"
	a = [numberA.text floatValue];
	b = [numberB.text floatValue];
	c = [numberC.text floatValue];
	d = [numberD.text floatValue];
	e = [numberE.text floatValue];
	f = [numberF.text floatValue];
	
	//Rechnung der Einzelnen zur MATRIX
	I = a*e - b*d;
	G = c*e - b*f;
	Z = a*f - c*d;
	
	//anzeigen der Möglichkeiten der Lösung
	if (I != 0) {
		loesung1.hidden = 0;
		loesung2.hidden = 1;
		loesung3.hidden = 1;
	}
	else if (G == 0 && I == 0) {
		loesung1.hidden = 1;
		loesung2.hidden = 0;
		loesung3.hidden = 1;
	}
	else if (G != 0) {
		loesung1.hidden = 1;
		loesung2.hidden = 1;
		loesung3.hidden = 0;
	}
	
	//Rechnung der "x" und "y" Werte
	x = G/I;
	y = Z/I;
	
	//eintragen der "x" und "y" Werte in die Lösungssumme
	[UIColor redColor];
	if (I != 0)
		  {
		loesungsSumme.text = [NSString stringWithFormat:@" = { ( %.3f | %.3f ) }",x,y];
		  }
	else if (G != 0)
		  {
		loesungsSumme.text = [NSString stringWithFormat:@" = { ( / | / ) }"];
		  }
	else if (G == 0 && I == 0)
		  {
		loesungsSumme.text = [NSString stringWithFormat:@" = { ( ∞ | ∞ ) }"];
		  }
	
	
	//Hinzufügen der Variablen zum Array "variablenMatrixArray"
	[variablenMatrixArray addObject:[NSString stringWithFormat:@"%i >>>>> a=%.3f / b=%.3f / c=%.3f / d=%.3f / e=%.3f / f=%.3f",ParameterButtonKlicks,a,b,c,d,e,f]];
	
	
	//Hinzufügen der Lösungssumme zum Array "loesungsSummenArray" und überprüfung der Werte
	if (I != 0)
		  {
		[loesungsSummenArray addObject:[NSString stringWithFormat:@"%i >>>>> x = %.3f, y = %.3f",ParameterButtonKlicks,x,y]];
		  }

	else if (G != 0)
		  {
		[loesungsSummenArray addObject:[NSString stringWithFormat:@"%i >>>>> x = /, y = /",ParameterButtonKlicks]];
		  }
	else if (G == 0 && I == 0)
		  {
		[loesungsSummenArray addObject:[NSString stringWithFormat:@"%i >>>>> x = (unendlich), y = (unendlich)",ParameterButtonKlicks]];
		  }
	
	//Ausgabe des Arrays als Hash im Command
	NSLog(@"%i %@ >> %i %@", ParameterButtonKlicks, variablenMatrixArray, ParameterButtonKlicks, loesungsSummenArray);
	
	
	//Ablage zum kopieren und verbessern des Array-Managements
	//[loesungsSummenArray addObject:[NSString stringWithFormat:@"x = %.3f, y = %.3f",x,y]];
}

- (IBAction)resetMainView:(id)sender
{
	//zurücksetzen der Loesungen
	loesung1.hidden = 1;
	loesung2.hidden = 1;
	loesung3.hidden = 1;
	
	//zurücksetzen der Variablen
	a = 0;
	b = 0;
	c = 0;
	d = 0;
	e = 0;
	f = 0;
	I = 0;
	G = 0;
	Z = 0;
	x = 0;
	y = 0;
	
	//zurücksetzen der Textfelder
	numberA.text = @"";
	numberB.text = @"";
	numberC.text = @"";
	numberD.text = @"";
	numberE.text = @"";
	numberF.text = @"";
	
	//leeren der Loesungssumme
	loesungsSumme.text = @"";
	
	//zurücksetzen der Farbe
	[UIColor blackColor];
	
	//löschen der Arrays und UserDefaults
	[loesungsSummenArray removeAllObjects];
	[variablenMatrixArray removeAllObjects];
	
	[loesungsSummenArray removeAllObjects];
	[variablenMatrixArray removeAllObjects];
	[loesungsSummenArray_3 removeAllObjects];
	[variablenMatrixArray_3 removeAllObjects];
	[standardUserDefaults_1 removeObjectForKey:@"variablenMatrixArray_UserDefaults"];
	[standardUserDefaults_1 removeObjectForKey:@"loesungsSummenArray_UserDefaults"];
	
	//Zurücksetzen des Button counts
	ParameterButtonKlicks = 0;
	buttonKlicksForParameter = 1;
}

- (IBAction)informationForProcessView:(id)sender
{
		
}

//Wird überprüft, ob es die Daten aus den Arrays noch gibt
- (IBAction)ProcessViewLoadAndCheckForData:(id)sender
{
	//Gespeicherte Variablen auslesen aus "ProcessViewController"
	NSUserDefaults *standardUserDefaults_4 = [NSUserDefaults standardUserDefaults];
	
	NSMutableArray *variablenMatrixArray_3 = nil;
	NSMutableArray *loesungsSummenArray_3 = nil;
	
	//zuweisung der einzelnen gespeicherten Variablen zu den neuen Arrays aus "ProcessViewController"
	if (standardUserDefaults_4)
		  {
		loesungsSummenArray_3 = [standardUserDefaults_4 objectForKey:@"loesungsSummenArray_2_UserDefaults"];
		variablenMatrixArray_3 = [standardUserDefaults_4 objectForKey:@"variablenMatrixArray_2_UserDefaults"];
		  }
	
	//Zuweisung des Speicherplatzes
	standardUserDefaults_1 = [NSUserDefaults standardUserDefaults];
	
	//Array "variablenMatrixArray" und "loesungsSummenArray" speichern
	if (standardUserDefaults_1) {
		[standardUserDefaults_1 setObject:[NSArray arrayWithArray:variablenMatrixArray] forKey:@"variablenMatrixArray_UserDefaults"];
		[standardUserDefaults_1 setObject:[NSArray arrayWithArray:loesungsSummenArray] forKey:@"loesungsSummenArray_UserDefaults"];
		[standardUserDefaults_1 synchronize];
	}

	/*
	//Überprüfung auf löschvorgang aus "ProcessVIewController"
		[loesungsSummenArray removeAllObjects];
		[variablenMatrixArray removeAllObjects];
		[loesungsSummenArray_3 removeAllObjects];
		[variablenMatrixArray_3 removeAllObjects];
		[standardUserDefaults_1 removeObjectForKey:@"variablenMatrixArray_UserDefaults"];
		[standardUserDefaults_1 removeObjectForKey:@"loesungsSummenArray_UserDefaults"];
		[standardUserDefaults_4 removeObjectForKey:@"variablenMatrixArray_2_UserDefaults"];
		[standardUserDefaults_4 removeObjectForKey:@"loesungsSummenArray_2_UserDefaults"];
	 */
	
}

@end