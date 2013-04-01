//
//  JCButtonViewController.m
//  Button Fun
//
//  Created by Costello, Jonathan on 4/1/13.
//  Copyright (c) 2013 Costello, Jonathan. All rights reserved.
//

#import "JCButtonViewController.h"
#import "JCButtonGridView.h"

@implementation JCButtonViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        
        self.wantsFullScreenLayout = YES;
    }
    
    return self;
}

- (void)loadView {
    
    CGRect frame = [[UIScreen mainScreen] bounds];
    
    self.view = [[[JCButtonGridView alloc] initWithFrame:frame] autorelease];
}

- (BOOL)shouldAutorotate {
    return NO;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)dealloc {
    
    [super dealloc];
}

@end
