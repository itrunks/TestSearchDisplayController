//
//  XCAViewController.h
//  TestSearchDisplayController
//
//  Created by Raja on 1/17/14.
//  Copyright (c) 2014 SearchBar Apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XCAViewController : UITableViewController<UISearchBarDelegate,UISearchDisplayDelegate> {
    NSNumber * scopeButtonPressedIndexNumber;
}

@end
