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

- (instancetype)init
{
    self = [super init];
    if (self) {
        _arrayOfDices = [[NSMutableArray alloc]init];    // instantiating the array of dices
        _heldDies = [[NSMutableArray alloc]init];        // instantiating the array of held dices
        _dice1 = [[Dice alloc]init];        // making 5 dices
        _dice2 = [[Dice alloc]init];
        _dice3 = [[Dice alloc]init];
        _dice4 = [[Dice alloc]init];
        _dice5 = [[Dice alloc]init];
        
        [self.arrayOfDices addObjectsFromArray:@[self.dice1,self.dice2,self.dice3,self.dice4,self.dice5]];  // adding it to the array
        
    }
    return self;
}

-(void)throwingDices{
    
    for (Dice *dice in self.arrayOfDices) {
        if ([self.heldDies containsObject:dice]) {
            // don't randomize
        } else {
            [dice randomValue];          // get random value of dice
            NSLog(@"%@",dice.currentValue);   // throwing the five dices
        }
    }
}


//  looping to make sure user input number is between 1 to 5
-(void)holdDie:(NSNumber *)dieIndex{
    Dice *dice = [[Dice alloc]init];
    
    int index = [dieIndex intValue];
    for (int i = 0; i <= 5; i++) {
        if (index == i ) {
            dice = self.arrayOfDices[index];
            [self.heldDies addObject:dice];
            [self.arrayOfDices removeObject:dice];       // adding the hold dice to my array of holddices.
            // printing the held dice value
        }
        
    }
    //[self throwingDices];
}

-(void)unholdDie: (NSNumber *)dieIndex{
    Dice *dice = [[Dice alloc]init];
    int index = [dieIndex intValue];
    for (int i = 0; i<= 5; i++) {            // checking to see whether the die is in helddie array if it is than we remove it, if not
        if (index == i) {                    // than we move it
            dice = self.heldDies[index];
            [self.heldDies removeObject:dice];
            [self.arrayOfDices addObject:dice]; // removing the object and unholding it one
        }
        
    }
    // [self throwingDices];
}



-(void)displayHoldDies{
    for (Dice *dice in self.heldDies) {
        NSLog(@"[%@] HELD",dice.currentValue);
    }
}

-(void)displayUnholdDies{
    for (Dice *dice in self.arrayOfDices) {
        NSLog(@"Unhold dies are %@",dice.currentValue);
    }
}


-(void)resetDice{
    
    for (Dice *dice in self.heldDies) {
        [self.arrayOfDices addObject:dice];  // adding back the dices in to the array
    }
    [self.heldDies removeAllObjects];   // removing all the objects from the our array that holds the die.
    NSLog(@"All dices have been removed, and have been thrown again");
    [self throwingDices];
}

-(void)calculateScore{
    NSUInteger score = 0;
    for (Dice *rolledDice in self.heldDies) {
        if ([rolledDice.currentValue isEqualToString:@"⚀ = 1"]) {
            score+= 1;
        }
        else if ([rolledDice.currentValue isEqualToString:@"⚁ = 2"]){
            score+= 2;
        }
        else if ([rolledDice.currentValue isEqualToString:@"⚂ = 3"]){
            score+= 0;
        }
        else if ([rolledDice.currentValue isEqualToString:@"⚃ = 4"]){
            score+= 4;
        }
        else if ([rolledDice.currentValue isEqualToString:@"⚄ = 5"]){
            score+= 5;
        }
        else if ([rolledDice.currentValue isEqualToString:@"⚅ = 6"]){
            score+= 6;
        }
    }
    NSLog(@"Your current score is %lu",(unsigned long)score);
}


@end
