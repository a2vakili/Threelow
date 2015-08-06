//
//  GameController.m
//  ThreeLow
//
//  Created by Arsalan Vakili on 2015-08-06.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import "GameController.h"
#import "InputManager.h"

@implementation GameController

-(void)throwingDices{
    Dice *dice1 = [[Dice alloc]init];
    [dice1 randomValue];
    Dice *dice2 = [[Dice alloc]init];
    [dice2 randomValue];
    Dice *dice3 = [[Dice alloc]init];
    [dice3 randomValue];
    Dice *dice4 = [[Dice alloc]init];
    [dice4 randomValue];
    Dice *dice5 = [[Dice alloc]init];
    [dice5 randomValue];
    
    self.arrayOfDices = @[dice1,dice2,dice3,dice4,dice5];
}

-(void)holdDie:(Dice *)die{
    InputManager *manager = [[InputManager alloc]init];
    NSString *hold = [manager inputForPrompt:@"Please choose the index of array to hold a die"];
    
    
}

@end
