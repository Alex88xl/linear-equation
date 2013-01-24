//
//  ProcessViewController.m
//  linear equation
//
//  Created by Alex Wrede on 19.06.12.
//  Copyright (c) 2012 Alex Wrede. All rights reserved.
//

#import "ProcessViewController.h"

@interface ProcessViewController ()

@end

@implementation ProcessViewController

@synthesize ProcessScrollTextView;

//Neue Arrays zum auslesen der gespeicherten Daten anlegen
NSMutableArray *variablenMatrixArray_2 = nil;
NSMutableArray *loesungsSummenArray_2 = nil;

//Gespeicherte Variablen auslesen
NSUserDefaults *standardUserDefaults_2;

//Speichern der Variablen zur Verwertung, um Sie vollständig zu löschen
NSUserDefaults *standardUserDefaults_3;

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
	
	//AlertView zur information
	UIAlertView *alertViewInformation = [[UIAlertView alloc]
											initWithTitle:@"Bitte beachten!"
											message:@"Wenn Sie den Verlauf sehen wollen, drücken Sie bitte ""RESET / Refresh""!"
											delegate:self
											cancelButtonTitle:nil
											otherButtonTitles:@"OK, I've read!", nil];
	
	[alertViewInformation show];
	
	//speicherplatz zuweisen
	standardUserDefaults_2 = [NSUserDefaults standardUserDefaults];
	standardUserDefaults_3 = [NSUserDefaults standardUserDefaults];
	
	/*//Überprüfung auf löschvorgang aus "ProcessVIewController"
	if (ProcessScrollTextView.text == @"" || ProcessScrollTextView.text == @"")
		  {
		[loesungsSummenArray_2 removeAllObjects];
		[variablenMatrixArray_2 removeAllObjects];
		[standardUserDefaults_2 removeObjectForKey:@"variablenMatrixArray_2_UserDefaults"];
		[standardUserDefaults_2 removeObjectForKey:@"loesungsSummenArray_2_UserDefaults"];
		//[standardUserDefaults_3 removeObjectForKey:@"variablenMatrixArray_3_UserDefaults"];
		//[standardUserDefaults_3 removeObjectForKey:@"loesungsSummenArray_3_UserDefaults"];
		  }*/
	
	[standardUserDefaults_3 setObject:[NSArray arrayWithArray:variablenMatrixArray_2] forKey:@"variablenMatrixArray_2_UserDefaults"];
	[standardUserDefaults_3 setObject:[NSArray arrayWithArray:loesungsSummenArray_2] forKey:@"loesungsSummenArray_2_UserDefaults"];
	[standardUserDefaults_3 synchronize];

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

- (IBAction)backBarButtonProcess:(id)sender
{
	[self dismissViewControllerAnimated:YES completion:nil];
}

//Reset durch Methode: - (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
- (IBAction)resetProcessTextField:(id)sender
{
		//AlertView zur einverständnis des Vorgangs des Refresh
	UIAlertView *alertViewResetAcception = [[UIAlertView alloc]
											initWithTitle:@"Möchten Sie Refreshen?!"
											message:@"Möchten Sie den Verlauf Refreshen?"
											delegate:self
											cancelButtonTitle:@"BREAK UP!"
											otherButtonTitles:@"REFRESH!", nil];
	
	[alertViewResetAcception show];	
}

//Überprüfung auf die Antwort des Alert
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
	NSMutableArray *variablenMatrixArray_2 = nil;
	NSMutableArray *loesungsSummenArray_2 = nil;
	
	//zuweisung der einzelnen gespeicherten Variablen zu den neuen Arrays
	loesungsSummenArray_2 = [standardUserDefaults_2 objectForKey:@"loesungsSummenArray_UserDefaults"];
	variablenMatrixArray_2 = [standardUserDefaults_2 objectForKey:@"variablenMatrixArray_UserDefaults"];
	
	//Abfrage, welcher Knopf gedrückt wurde
	if (buttonIndex == 1) {
		//Gespeicherte Variablen darstellen
		ProcessScrollTextView.text = [NSString stringWithFormat:@"%@ >> %@",variablenMatrixArray_2, loesungsSummenArray_2];
	
		}
	/*if (buttonIndex == 1)
		  {
		//Alle Werte zurücksetzen
		[loesungsSummenArray_2 removeAllObjects];
		[variablenMatrixArray_2 removeAllObjects];
		ProcessScrollTextView.text = @"";
		
		[standardUserDefaults_2 removeObjectForKey:@"variablenMatrixArray_2_UserDefaults"];
		[standardUserDefaults_2 removeObjectForKey:@"loesungsSummenArray_2_UserDefaults"];
		  }
	 */
	/*	if (buttonIndex == 1)
			  {
	if (standardUserDefaults_3)
		  {
		
		  }
			  }
	 */
}

@end
