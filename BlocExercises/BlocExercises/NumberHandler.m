//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    NSInteger intValue = [number intValue];
    intValue *= 2;
    return @(intValue);
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    NSInteger lowestNumber, highestNumber;
    
    if (number < otherNumber) {
        lowestNumber = number;
        highestNumber = otherNumber;
    } else {
        lowestNumber = otherNumber;
        highestNumber = number;
    }
    
    NSMutableArray *mutableArray = [NSMutableArray array];
    
    for (NSInteger i = lowestNumber; i <= highestNumber; i++) {
        [mutableArray addObject:@(i)];
    }
    
    return mutableArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    
    
    NSInteger lowestNumber = NSIntegerMax;
    
    for (NSNumber *number in arrayOfNumbers) {
        NSInteger integerValue = [number integerValue];
        
        if (integerValue < lowestNumber) {
            lowestNumber = integerValue;
        }
    }
    return lowestNumber;
}

@end
