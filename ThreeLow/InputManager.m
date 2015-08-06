//
//  InputManager.m
//  ThreeLow
//
//  Created by Arsalan Vakili on 2015-08-06.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import "InputManager.h"

@implementation InputManager

-(NSString *)inputForPrompt:(NSString *)promptString{
    NSLog(@"%@",promptString);
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    
    return inputString;
}

@end
