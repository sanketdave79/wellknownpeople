//
//  SDViewByClickViewController.m
//  wellknownpeople
//
//  Created by sanket on 20/01/2014.
//  Copyright (c) 2014 Techmentation. All rights reserved.
//

#import "SDViewByClickViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface SDViewByClickViewController ()

@end

@implementation SDViewByClickViewController

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
    
    self.backButton.layer.cornerRadius = 8.0f;
    
}



-(IBAction)goBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
