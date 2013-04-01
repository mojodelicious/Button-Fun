//
//  JCButtonFunUtilities.m
//  Button Fun
//
//  Created by Costello, Jonathan on 4/1/13.
//  Copyright (c) 2013 Costello, Jonathan. All rights reserved.
//

#import "JCButtonFunUtilities.h"

#define RANDOM_MAX 0x100000000

@implementation JCButtonFunUtilities

+ (float)randomFloatBetweenZeroAndOne {
    
    float rand = (float)arc4random() / RANDOM_MAX;
    
    return rand;
}

@end
