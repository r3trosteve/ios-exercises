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
   return [characterString componentsSeparatedByString:@";"];
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    return [characterArray componentsJoinedByString:@";"];
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {

    NSArray *sortedArray = [characterArray sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];
    return sortedArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    for (NSString *characterName in characterArray) {
        NSString *lowercaseName = characterName.lowercaseString;
        NSRange worfRange = [lowercaseName rangeOfString:@"worf"];
        
        if (worfRange.location != NSNotFound) {
            return YES;
        }
    }
    return NO;
}
@end
