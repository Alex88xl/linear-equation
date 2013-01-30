//
//  HomeViewController.m
//  linear equation
//
//  Created by Alex Wrede on 25.09.12.
//  Copyright (c) 2012 Alex Wrede. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController
@synthesize bannerIsVisible;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
	
    return self;
	
}

- (void)bannerViewDidLoadAd:(ADBannerView *)banner
{
	if (!self.bannerIsVisible)
	{
		[UIView beginAnimations:@"animateAdBannerOn" context:NULL];
		// banner is invisible now and moved out of the screen on 50px
		banner.frame = CGRectOffset(banner.frame, 0, 480);
        [UIView commitAnimations];
		self.bannerIsVisible = YES;
	}
}

- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
	if (self.bannerIsVisible)
	{
		[UIView beginAnimations:@"animateAdBannerOff" context:NULL];
		// banner is visible and we move it out of the screen, due to connection issue
		banner.frame = CGRectOffset(banner.frame, 0, -50);
        [UIView commitAnimations];
		self.bannerIsVisible = NO;
	}

}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
	adView = [[ADBannerView alloc] initWithFrame:CGRectZero];
	adView.frame = CGRectOffset(adView.frame, 0, -50);
	[self.view addSubview:adView];
	adView.delegate = self;
	self.bannerIsVisible = NO;
	[super viewDidLoad];
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

@end
