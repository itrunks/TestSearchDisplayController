//
//  XCAViewController.m
//  TestSearchDisplayController
//
//  Created by Raja on 1/17/14.
//  Copyright (c) 2014 SearchBar Apps. All rights reserved.
//

#import "XCAViewController.h"

@interface XCAViewController ()

@end

@implementation XCAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.title = @"Search View";
	
    testArray = [[NSArray alloc] initWithObjects:@"Dog", @"Rose",@"Cat", @"Tulip", @"Mouse", nil];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated{
    
    
}
-(void)viewWillLayoutSubviews{
    
}

- (NSInteger)numberOfSectionsInTableView: (UITableView *)tableView {
    
    return 1;
    
}


- (NSInteger)tableView: (UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [testArray count];
}

- (UITableViewCell *)tableView:(UITableView *)myTableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [myTableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell.
    cell.textLabel.text = [testArray objectAtIndex: [indexPath row]];
    
    return cell;
}

-(BOOL)searchBarShouldBeginEditing:(UISearchBar *)searchBar {
    return YES;
}

- (BOOL) searchBarShouldEndEditing:(UISearchBar *)searchBar {
    return YES;
}

- (void) searchDisplayController:(UISearchDisplayController *)controller willHideSearchResultsTableView:(UITableView *)tableView {
    NSLog(@"WillHideSearchResults");
}

- (void) searchDisplayController:(UISearchDisplayController *)controller willUnloadSearchResultsTableView:(UITableView *)tableView {
    NSLog(@"WillUnloadSearchResults");
}

- (void) searchDisplayControllerWillEndSearch:(UISearchDisplayController *)controller {
    NSLog(@"WillEndSearch");
}




@end
