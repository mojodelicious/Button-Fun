//
//  UIColor+UIColor_Random.m
//  Button Fun
//
//  Created by Costello, Jonathan on 4/1/13.
//  Copyright (c) 2013 Costello, Jonathan. All rights reserved.
//

#import "UIColor+Random.h"
#import "JCButtonFunUtilities.h"

@implementation UIColor (Random)

+ (UIColor *)randomColor {
    
    CGFloat randRed = (CGFloat)[JCButtonFunUtilities randomFloatBetweenZeroAndOne];
    CGFloat randGreen = (CGFloat)[JCButtonFunUtilities randomFloatBetweenZeroAndOne];
    CGFloat randBlue = (CGFloat)[JCButtonFunUtilities randomFloatBetweenZeroAndOne];
    CGFloat alpha = 1.0f;
    
    return [UIColor colorWithRed:randRed green:randGreen blue:randBlue alpha:alpha];
}

@end
