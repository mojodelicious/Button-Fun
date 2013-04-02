//
//  JCButtonGridView.m
//  Button Fun
//
//  Created by Costello, Jonathan on 4/1/13.
//  Copyright (c) 2013 Costello, Jonathan. All rights reserved.
//

#import "JCButtonGridView.h"
#import "JCButtonView.h"

@implementation JCButtonGridView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (nil != self) {
        
        self.buttonWidth = 40.0f;
        self.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    }
    
    return self;
}

- (void)dealloc {
    
    self.allButtons = nil;
    
    [super dealloc];
}

- (void)layoutSubviews {
    
    for (JCButtonView * button in self.allButtons) {
        [button removeFromSuperview];
    }
    
    NSMutableArray * buttons = [NSMutableArray array];
    
    // If the width and height cannot be evenly divisble by 40
    // We add one extra row and column
    NSUInteger columns = ceilf(self.frame.size.width / self.buttonWidth);
    NSUInteger rows = ceilf(self.frame.size.height / self.buttonWidth);
    
    CGFloat x = 0.0f;
    CGFloat y = 0.0f;
    
    for (int i = 0; i < rows; i++) {
        
        for (int j = 0; j < columns; j++) {
            
            JCButtonView * view = [[[JCButtonView alloc] initWithFrame:CGRectMake(x, y, self.buttonWidth, self.buttonWidth)] autorelease];
            [buttons addObject:view];
            [self addSubview:view];
            
            x += self.buttonWidth;
        }
        
        x = 0.0f;
        y += self.buttonWidth;
    }
    
    self.allButtons = [NSArray arrayWithArray:buttons];
}

- (void)changeAllButtonColorsAnimated:(BOOL)animated {
    
    void (^switchColors)(void) = ^{
        
        for (JCButtonView * button in self.allButtons) {
            [button switchRandomBackgroundColor];
        }
    };
    
    if (animated) {
        
        [UIView animateWithDuration:5 animations:switchColors];
        
    } else {
     
        switchColors();
    }
}

@end
