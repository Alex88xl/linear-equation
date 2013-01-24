//
//  HomeViewController.h
//  linear equation
//
//  Created by Alex Wrede on 25.09.12.
//  Copyright (c) 2012 Alex Wrede. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface HomeViewController : UIViewController <ADBannerViewDelegate>
{
	ADBannerView *adView;
	BOOL bannerIsVisible;
}

@property (nonatomic, assign)BOOL bannerIsVisible;

@end
