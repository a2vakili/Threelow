//
//  Dice.h
//  ThreeLow
//
//  Created by Arsalan Vakili on 2015-08-06.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property(nonatomic) NSString *currentValue;


-(void)randomValue;

@end
