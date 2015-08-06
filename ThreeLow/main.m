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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        GameController *gameController = [[GameController alloc]init];
        
        BOOL running = true;
        while (running) {
            InputManager *manager = [[InputManager alloc]init];
         NSString *inputString =[manager inputForPrompt:@"Please input roll- for rolling the dice, you can input hold- for holding the dice"];
            
            if ([inputString isEqualToString:@"roll\n"]) {
               
                [gameController throwingDices];
            }
            
        }
        
    }
    return 0;
}
