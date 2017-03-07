//
//  main.m
//  Maths
//
//  Created by Pierre Binon on 2017-03-07.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES; //By default, a BOOL variable is set to NO
        
        ScoreKeeper *score = [ScoreKeeper new];

        
        while (YES) {
            
            AdditionQuestion *addition = [[AdditionQuestion alloc] init];
            
//            //Cannot be instantiated within the loop because it's being reset everytime the loop runs...
//            ScoreKeeper *score = [ScoreKeeper new];
            
            NSLog (@"%@", addition.question);
            
//            char inputChars[255];
//            fgets(inputChars, 255, stdin);
//            NSString *inputString = [NSString stringWithCString: inputChars encoding: NSUTF8StringEncoding];
//            NSString *inputedText = [inputString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];

            
            
//            //Using instance method
//            InputHandler *input = [InputHandler new];
//            NSString *inputedText = [input inputHandling];
            
            //Using class method
            NSString *inputedText = [InputHandler inputHandling];

            
            
            
            if ([inputedText isEqualToString: @"quit"] || [inputedText isEqualToString: @"QUIT"]) {
                gameOn = NO;
                break;
            } else {
                
            NSInteger inputedInteger = [inputedText integerValue];
                        
//            //WON'T WORK THAT WAY BECAUSE SELF REFERS TO THE ADDITIONQUESTION CLASS AND CAN ONLY BE USED IN IT
//            if (inputedInteger == self.answer)
            if (inputedInteger == addition.answer) {
                NSLog (@"RIGHT!");
                score.correctAnswer++;
            }
            else {
                NSLog (@"WRONG!!!");
                score.wrongAnswer++;
            }
            }
            NSString *returnedString = [score scoreOutput];
            NSLog (@"%@", returnedString);
        }
    }
    return 0;
}
