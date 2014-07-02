//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    NSArray *characterArray = [characterString componentsSeparatedByString:@";"];
    NSLog(@"%@", characterArray);
    return characterArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSString *characterString = [characterArray componentsJoinedByString:@";"];
    return characterString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    NSArray *sortDescriptors = @[sortDescriptor];
    NSArray *sortedArray = [characterArray sortedArrayUsingDescriptors:sortDescriptors];
    return sortedArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    NSPredicate *containsWorfPredicate = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];
    [characterArray filteredArrayUsingPredicate:containsWorfPredicate];
    for (NSString *string in characterArray) {
        NSLog(@"Character Name: %@", string);
    }
    return YES;
    
    }

@end
