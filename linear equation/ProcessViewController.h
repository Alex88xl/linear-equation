//
//  ProcessViewController.h
//  linear equation
//
//  Created by Alex Wrede on 19.06.12.
//  Copyright (c) 2012 Alex Wrede. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProcessViewController : UIViewController

- (IBAction)backBarButtonProcess:(id)sender;

@property (strong, nonatomic) IBOutlet UITextView *ProcessScrollTextView;

- (IBAction)resetProcessTextField:(id)sender;


@end
