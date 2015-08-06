//
//  Dice.m
//  ThreeLow
//
//  Created by Arsalan Vakili on 2015-08-06.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentValue = 0;
    }
    return self;
}

-(void)randomValue{
    
    self.currentValue = (int)arc4random_uniform(6) + 1;
    
    NSLog(@"Dice number is %i",self.currentValue);
}

@end
