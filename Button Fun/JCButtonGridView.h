//
//  JCButtonGridView.h
//  Button Fun
//
//  Created by Costello, Jonathan on 4/1/13.
//  Copyright (c) 2013 Costello, Jonathan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JCButtonGridView : UIView

@property (nonatomic, assign) CGFloat buttonWidth;
@property (nonatomic, retain) NSArray * allButtons;

// Changes every button to a new random color
- (void)changeAllButtonColorsAnimated:(BOOL)animated;

@end
