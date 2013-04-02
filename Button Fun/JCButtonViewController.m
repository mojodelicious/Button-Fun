//
//  JCButtonViewController.m
//  Button Fun
//
//  Created by Costello, Jonathan on 4/1/13.
//  Copyright (c) 2013 Costello, Jonathan. All rights reserved.
//

#import "JCButtonViewController.h"

@implementation JCButtonViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (nil != self) {
        
        self.wantsFullScreenLayout = YES;
    }
    
    return self;
}

- (void)loadView {
    
    CGRect frame = [[UIScreen mainScreen] bounds];
    
    self.gridView = [[[JCButtonGridView alloc] initWithFrame:frame] autorelease];
    
    self.view = self.gridView;
}

- (BOOL)shouldAutorotate {
    return NO;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    [self becomeFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)dealloc {
    
    self.gridView = nil;
    [super dealloc];
}

- (BOOL)canBecomeFirstResponder {
    return YES;
}

#pragma mark - motion handler

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    
    if (motion == UIEventSubtypeMotionShake)
    {
        //change every block color
        [self.gridView changeAllButtonColorsAnimated:YES];
    }
}

@end
