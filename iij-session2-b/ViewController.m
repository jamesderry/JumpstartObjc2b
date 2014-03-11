//
//  ViewController.m
//  iij-session2-b
//
//  Created by James Derry on 3/11/14.
//  Copyright (c) 2014 James Derry. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *alphabet;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    alphabet = @[@"Alpha", @"Beta", @"Gamma", @"Delta", @"Epsilon", @"Zeta", @"Eta", @"Theta", @"Iota", @"Kappa", @"Lambda", @"Mu", @"Nu", @"Xi"];
    
}

#pragma mark - UITableView Delegate and Datasource Methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [alphabet count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *identifier = @"ourCell";
    UITableViewCell *cell;
    cell = [tableView dequeueReusableCellWithIdentifier:@"ourCell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    cell.textLabel.text = [alphabet objectAtIndex:indexPath.row];
    
    return cell;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
