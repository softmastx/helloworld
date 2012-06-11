//
//  InfoView.m
//  helloworld
//
//  Created by Narong Aunthee on 6/12/12.
//  Copyright (c) 2012 Eurocopter thailand . All rights reserved.
//

#import "InfoView.h"

@implementation InfoView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    self.title = @"Info View";
    
    aButton = [[UIButton alloc]initWithFrame:CGRectMake(80, 50, 150, 50)];
    aButton.backgroundColor = [UIColor blackColor];
    [aButton setTitle:@"Back" forState:UIControlStateNormal];
    [aButton addTarget:self action:@selector(flip) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:aButton];
    [aButton release];
}

-(void) flip {
    
    [self dismissModalViewControllerAnimated:YES];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
