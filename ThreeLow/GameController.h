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

@property(nonatomic,strong) NSMutableArray *arrayOfDices;

@property(nonatomic,strong) NSMutableArray *heldDies;

@property(nonatomic,strong) Dice *dice1;
@property(nonatomic,strong) Dice *dice2;
@property(nonatomic,strong) Dice *dice3;
@property(nonatomic,strong) Dice *dice4;
@property(nonatomic,strong) Dice *dice5;

@property(nonatomic,strong) Dice *heldDie;



-(void)throwingDices;

-(void)holdDie:(NSNumber *)index;

-(void)resetDice;

-(void)displayHoldDies;

-(void)calculateScore;

-(void)unholdDie: (NSNumber *)dieIndex;
-(void)displayUnholdDies;

@end
