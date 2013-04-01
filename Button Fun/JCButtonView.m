//
//  JCButtonView.m
//  Button Fun
//
//  Created by Costello, Jonathan on 4/1/13.
//  Copyright (c) 2013 Costello, Jonathan. All rights reserved.
//

#import "JCButtonView.h"
#import "UIColor+Random.h"

@implementation JCButtonView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (nil != self) {
        
        // No UIButtons!
        UIGestureRecognizer * tapRecognizer = [[[UITapGestureRecognizer alloc] init] autorelease];
        [tapRecognizer addTarget:self action:@selector(didTap:)];
        [self addGestureRecognizer:tapRecognizer];
        
        self.backgroundColor = [UIColor randomColor];
    }
    
    return self;
}

- (void)didTap:(UIGestureRecognizer *)gestureRecognizer {
    
    if (gestureRecognizer.state == UIGestureRecognizerStateEnded) {
        
        //create a random color
        UIColor * newColor = [UIColor randomColor];
        
        //chage the background color
        self.backgroundColor = newColor;
    }
}

@end
