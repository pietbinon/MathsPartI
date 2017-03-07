//
//  AdditionQuestion.m
//  Maths
//
//  Created by Pierre Binon on 2017-03-07.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "AdditionQuestion.h"



@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        NSInteger leftNumber = arc4random_uniform(90) + 10;
        NSInteger rightNumber = arc4random_uniform(90) + 10;
        
        _question = [NSString stringWithFormat: @"%ld + %ld = ? Or type \"quit\" to exit the game\n", (long)leftNumber, (long)rightNumber];
        _answer = leftNumber + rightNumber;
    }
    return self;
}

@end
