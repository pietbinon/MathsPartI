//
//  ScoreKeeper.m
//  Maths
//
//  Created by Pierre Binon on 2017-03-07.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "ScoreKeeper.h"



@implementation ScoreKeeper

- (NSString *) scoreOutput {
    
    CGFloat percentage = 100 * ((CGFloat)self.correctAnswer / (self.correctAnswer + self.wrongAnswer));
    
    return [NSString stringWithFormat: @"Score: %ld correct answers, %ld wrong answers --- %.2f%%", (long)self.correctAnswer, (long)self.wrongAnswer, percentage];
}

@end
