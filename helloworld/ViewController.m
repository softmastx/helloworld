//
//  ViewController.m
//  helloworld
//
//  Created by Narong Aunthee on 6/10/12.
//  Copyright (c) 2012 Eurocopter thailand . All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize myTableView;

-(void)dealloc{
    [myTableView release];
    [super dealloc];
}

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
    
    myTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, 320, 480)];
    myTableView.dataSource = self;
    myTableView.delegate = self;
    [self.view addSubview:myTableView];
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


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
    
}

-(NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    return [NSString stringWithFormat:@"sample %d",section];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil){
        
        //cell = [[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier]autorelease];
        cell = [[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle
                                      reuseIdentifier:CellIdentifier]autorelease];
    }
    cell.detailTextLabel.font = [UIFont fontWithName:@"AmericanTypewriter" size:12.5 ];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"I'm details text row %d of section %d",indexPath.row,indexPath.section];

    cell.textLabel.font = [UIFont fontWithName:@"AppleGothic" size:15.0];
    cell.textLabel.text = [NSString stringWithFormat:@"I'm row %d of section %d",indexPath.row,indexPath.section];
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *message = [NSString stringWithFormat:@"Section %d, Row %d",indexPath.section,indexPath.row];
    UIAlertView *alertview = [[UIAlertView alloc] initWithTitle:@"Info"
                                                        message:message
                                                       delegate:nil
                                              cancelButtonTitle:@"OK" 
                                              otherButtonTitles:nil];
    
    [alertview show];
    [alertview release];
}


-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return (section == 0) ? 2 :3 ;
    
}


@end
