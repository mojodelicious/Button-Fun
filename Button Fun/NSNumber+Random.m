//
//  NSNumber+Random.m
//  Button Fun
//
//  Created by Costello, Jonathan on 4/9/13.
//  Copyright (c) 2013 Costello, Jonathan. All rights reserved.
//

#import "NSNumber+Random.h"

#define RANDOM_MAX 0x100000000

@implementation NSNumber (Random)

+ (NSNumber *)randomFloatBetweenZeroAndOne {
    
    float rand = (float)arc4random() / RANDOM_MAX;
    
    return [NSNumber numberWithFloat:rand];
}

@end
