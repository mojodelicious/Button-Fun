//
//  UIColor+UIColor_Random.m
//  Button Fun
//
//  Created by Costello, Jonathan on 4/1/13.
//  Copyright (c) 2013 Costello, Jonathan. All rights reserved.
//

#import "UIColor+Random.h"
#import "NSNumber+Random.h"

@implementation UIColor (Random)

+ (UIColor *)randomColor {
    
    CGFloat randRed = (CGFloat)[[NSNumber randomFloatBetweenZeroAndOne] floatValue];
    CGFloat randGreen = (CGFloat)[[NSNumber randomFloatBetweenZeroAndOne] floatValue];
    CGFloat randBlue = (CGFloat)[[NSNumber randomFloatBetweenZeroAndOne] floatValue];
    CGFloat alpha = 1.0f;
    
    return [UIColor colorWithRed:randRed green:randGreen blue:randBlue alpha:alpha];
}

@end
