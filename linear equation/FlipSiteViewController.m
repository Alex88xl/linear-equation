//
//  FlipSiteViewController.m
//  linear equation
//
//  Created by Alex Wrede on 15.06.12.
//  Copyright (c) 2012 Alex Wrede. All rights reserved.
//

#import "FlipSiteViewController.h"

@interface FlipSiteViewController ()

@end

@implementation FlipSiteViewController

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

- (IBAction)backToMainScreen:(id)sender
{
	[self dismissViewControllerAnimated:YES completion:nil];
}
@end
