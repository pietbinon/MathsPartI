//
//  ScoreKeeper.h
//  Maths
//
//  Created by Pierre Binon on 2017-03-07.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface ScoreKeeper : NSObject

@property (nonatomic) NSInteger correctAnswer;
@property (nonatomic) NSInteger wrongAnswer;

- (NSString *) scoreOutput;



@end
