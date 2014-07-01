//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    cheeseName = @"ricotta";
    NSString *result = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    return result;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    NSRange chokeRange = [cheeseName rangeOfString:@" Cheese" options:NSCaseInsensitiveSearch];
    NSString *cheeseWithoutSuffix ;
    if (chokeRange.length > 0) {
        NSString *replacementString = @"";
        cheeseWithoutSuffix = [cheeseName stringByReplacingCharactersInRange:chokeRange withString:replacementString];
        return cheeseWithoutSuffix;
    } else {
        return cheeseName;
    }
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    NSString *cheeseText;
    if (cheeseCount > 1) {
        cheeseText = [NSString stringWithFormat:@"%ld cheeses", (long)cheeseCount];
    } else {
        cheeseText = [NSString stringWithFormat:@"%ld cheese", (long)cheeseCount];
    }
    return cheeseText;
}

@end
