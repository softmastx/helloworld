//
//  ViewController.m
//  helloworld
//
//  Created by Narong Aunthee on 6/10/12.
//  Copyright (c) 2012 Eurocopter thailand . All rights reserved.
//

#define D_MINUTE	60
#define D_HOUR		3600
#define D_DAY		86400
#define D_WEEK		604800
#define D_YEAR		31556926

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
    
    
    NSDate * now = [NSDate date];
    
    NSDateFormatter *formatter = [[[NSDateFormatter alloc] init] autorelease];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSTimeZone *gmt = [NSTimeZone timeZoneWithAbbreviation:@"GMT"];
    [formatter setTimeZone:gmt];
    
    // input format => 00:00:00 - 16:59:59
    NSDate *date = [formatter dateFromString:@"2012-06-09 04:01:00"];
    
    NSLog(@"Date Input Formatted %@",date);
    NSLog(@"Date Now : %@",now);
    
    
    NSTimeInterval ti = [[NSDate date] timeIntervalSinceDate:date];
    NSInteger days = ti / D_DAY;
    NSInteger hours = ti / D_HOUR;
    NSInteger minutes = ti / D_MINUTE;
    
    
    
	 NSLog(@"Total Days : %d",days);
    NSLog(@"Total Hours : %d",hours);
    NSLog(@"Total Minutes : %d",minutes);
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
