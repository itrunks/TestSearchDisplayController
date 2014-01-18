//
//  MySearchBar.m
//  TestSearchDisplayController
//
//  Created by Michael Secco on 19/01/2014.
//  Copyright (c) 2014 XCool Apps. All rights reserved.
//

#import "MySearchBar.h"

@implementation MySearchBar

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void) setShowsScopeBar:(BOOL)showsScopeBar {
    [super setShowsScopeBar:YES]; //Always show scope bar
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
