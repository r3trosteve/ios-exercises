//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    NSMutableString *string = [NSMutableString string];
    if (number > otherNumber) {
        for (NSInteger i = otherNumber; i <= number; i++ ) {
            [string appendString:[NSString stringWithFormat:@"%i",i]];
        }
    } else {
        for (NSInteger i = number; i <= otherNumber; i++ ) {
            [string appendString:[NSString stringWithFormat:@"%i",i]];
        }
    }
    return string;
}

@end
