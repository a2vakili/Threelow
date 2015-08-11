//
//  main.m
//  ThreeLow
//
//  Created by Arsalan Vakili on 2015-08-06.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputManager.h"
#import "GameController.h"
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        GameController *gameController = [[GameController alloc]init];
        
        BOOL running = true;
        while (running) {
            InputManager *manager = [[InputManager alloc]init];
            NSString *inputString =[manager inputForPrompt:@"Please input roll- for rolling the dice, you can input hold- for holding the dice, you can input unhold- for unholding the die, you can input reset- for reseting the game,you can input score- for getting the current score of the game, you can input displayhold- for the state of hold dies, and input quit- quit "];
            
            if ([inputString isEqualToString:@"roll"]) {
                [gameController throwingDices];
                // [gameController displayDies];
            }
            else if ([inputString isEqualToString: @"hold"]){
                NSLog(@"Remember the first index of array starts at 0");
                NSNumberFormatter *format = [[NSNumberFormatter alloc]init];
                NSString *holdString = [manager inputForPrompt:@"Please choose an index of die you want to hold"];
                NSNumber *userNumber = [format numberFromString:holdString];
                
                if ([userNumber intValue] > 5) {
                    NSLog(@"Make sure you input a number between 1 to 5");
                }
                
                
                
                [gameController holdDie:userNumber];
                [gameController displayHoldDies];
                [gameController displayUnholdDies];
                
            }
            
            else if ([inputString isEqualToString:@"unhold"]){
                [gameController displayHoldDies];
                NSNumberFormatter *format = [[NSNumberFormatter alloc]init];
                NSString *holdString = [manager inputForPrompt:@"Please choose an index of die you want to unhold"];
                NSNumber *userNumber = [format numberFromString:holdString];
                [gameController unholdDie: userNumber];
                
            }
            
            else if ([inputString isEqualToString:@"displayhold"]){
                [gameController displayHoldDies];
            }
            else if ([inputString isEqualToString:@"reset"]){
                [gameController resetDice];
            }
            else if ([inputString isEqualToString:@"score"]){
                [gameController calculateScore];
            }
            else if ([inputString isEqualToString:@"quit"]){
                NSLog(@"adieu, see you next time!!");
                
                break;
            }
        }
        return 0;
    }
}
