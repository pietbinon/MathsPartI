//
//  InputHandler.m
//  Maths
//
//  Created by Pierre Binon on 2017-03-07.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "InputHandler.h"



@implementation InputHandler

////Using instance method
//- (NSString *) inputHandling {
//    
//    char inputChars[255];
//    fgets(inputChars, 255, stdin);
//    NSString *inputString = [NSString stringWithCString: inputChars encoding: NSUTF8StringEncoding];
//    NSString *inputedText = [inputString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
//    return inputedText;
//
//}


//Using class method
+ (NSString *) inputHandling {
    
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    NSString *inputString = [NSString stringWithCString: inputChars encoding: NSUTF8StringEncoding];
    NSString *inputedText = [inputString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return inputedText;
    
}


@end
