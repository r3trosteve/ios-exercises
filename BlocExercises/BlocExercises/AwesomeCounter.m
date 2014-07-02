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
    NSInteger bigNumber, smallNumber;
    
    if (number > otherNumber) {
        bigNumber = number;
        smallNumber = otherNumber;
    } else {
        bigNumber = otherNumber;
        smallNumber = number;
    }
    for (NSInteger i = smallNumber; i <= bigNumber; i++ ) {
        [string appendString:[NSString stringWithFormat:@"%i",i]];
    }
    return string;
}

@end
