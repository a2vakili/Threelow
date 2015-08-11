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
        _currentValue = [[NSString alloc]init];
    }
    return self;
}

-(void)randomValue{
    
    NSArray *randomValues = @[@"⚀ = 1",@"⚁ = 2", @"⚂ = 3",@"⚃ = 4",@"⚄ = 5",@"⚅ = 6"];
    
    int random = (int)arc4random_uniform(6);
    
    self.currentValue = randomValues[random];
    
    
}

@end
