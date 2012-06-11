//
//  ViewController.m
//  helloworld
//
//  Created by Narong Aunthee on 6/10/12.
//  Copyright (c) 2012 Eurocopter thailand . All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    infoView = [[InfoView alloc]init];
    infoView.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    
    aButton = [[UIButton alloc]initWithFrame:CGRectMake(80, 50, 150, 50)];
    aButton.backgroundColor = [UIColor blackColor];
    [aButton setTitle:@"Info" forState:UIControlStateNormal];
    [aButton addTarget:self action:@selector(flip) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:aButton];
    [aButton release];
   
    
}

-(void) flip {
    
     [self presentModalViewController:infoView animated:YES];
    
}

-(void)dealloc{
    [infoView release];
    [super dealloc];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
