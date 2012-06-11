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

-(void) killHUD:(id)aHUD{
    [aHUD show:NO];
    
}

-(void) presentSheet{
    
    id HUD = [[UIProgressHUD alloc]initWithWindow:[self view]];
    [HUD setText:@"Dowloading..."];
    [HUD show:YES];
    
    [self performSelector:@selector(killHUD:) withObject:HUD afterDelay:5.0];
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self presentSheet];
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
