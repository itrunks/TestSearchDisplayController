//
//  XCAViewController.m
//  TestSearchDisplayController
//
//  Created by Kian Lim on 1/17/14.
//  Copyright (c) 2014 XCool Apps. All rights reserved.
//

#import "XCAViewController.h"

@interface XCAViewController ()

@end

@implementation XCAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
//	[self.searchDisplayController.searchBar setBarTintColor:[UIColor blueColor]];		// Blue color works
	//[self.searchDisplayController.searchBar  setBarStyle:UIBarStyleBlack];		// This gives a grayish tint instead of black
    
  //  self.navigationController.navigationBar.translucent = NO; // If you have a navBar
  //  self.searchDisplayController.searchBar.translucent = NO;
 
    
    //[[UISearchBar appearance] setSearchFieldBackgroundImage:[UIImage imageNamed:@"black.png"]forState:UIControlStateNormal];
    [[UISearchBar appearance] setBackgroundImage:[UIImage imageNamed:@"black"]];
   // [[UISearchBar appearance] setBackgroundImage:[UIImage imageNamed:@"black.png"] forBarPosition:UIBarPositionTop barMetrics:UIBarMetricsDefault];
    
    self.navigationController.view.backgroundColor=[UIColor blackColor];
    
   // [[UISearchBar appearance]setSearchFieldBackgroundImage:[UIImage imageNamed:@"black.png"] forState:UIControlStateNormal];
    self.searchDisplayController.searchBar.backgroundImage=[UIImage imageNamed:@"black"] ;
    //[[UISearchBar appearance] setBarTintColor:[UIColor orangeColor]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated{
    
    
}

-(void)searchDisplayControllerWillBeginSearch:(UISearchDisplayController *)controller{
    
    controller.searchBar.barTintColor=[UIColor blackColor];
    //controller.searchResultsTableView.tintColor=[UIColor blackColor];
   // controller.navigationItem.titleView.backgroundColor=[UIColor redColor];
  //  controller.searchResultsTableView.tableHeaderView.backgroundColor=[UIColor redColor];

    self.navigationController.navigationBarHidden=YES;
    

}
-(void)searchBarCancelButtonClicked:(UISearchBar *)searchBar{
    
    self.navigationController.navigationBarHidden=NO;
}

-(void)searchDisplayControllerDidBeginSearch:(UISearchDisplayController *)controller{
    
     // controller.searchResultsTableView.backgroundColor=[UIColor redColor];
}

-(void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar{
    
   // [searchBar  setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"black"]]];

   // [self.searchDisplayController.searchResultsTableView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"black"]]];
    
   // self.navigationController.navigationBar.translucent = NO;
  //  self.searchDisplayController.searchBar.translucent = NO;
    
    //searchBar.backgroundImage = [UIImage imageNamed:@"black.png"];
    
    //searchBar.barStyle=UIBarStyleBlack;

//    [searchBar setBackgroundImage:[UIImage imageNamed:@"black.png"] forBarPosition:UIBarPositionTop barMetrics:UIBarMetricsDefault
//     ];
    
    
   // self.searchDisplayController.displaysSearchBarInNavigationBar=NO;
}



@end
