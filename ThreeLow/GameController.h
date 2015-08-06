//
//  GameController.h
//  ThreeLow
//
//  Created by Arsalan Vakili on 2015-08-06.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

@property(nonatomic,strong) NSArray *arrayOfDices;

@property(nonatomic,strong) NSMutableSet *heldDies;


-(void)throwingDices;

-(void)holdDie:(Dice *)die;

@end
