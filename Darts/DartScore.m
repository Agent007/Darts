#import "DartScore.h"

@implementation DartScore

+ (NSString *)scoreWithX:(CGFloat)xCoordinate Y:(CGFloat)yCoordinate
{
    NSString *score;
    NSString *multiplier;
    
    NSArray *slices = @[@6, @13, @4, @18, @1, @20, @5, @12, @9, @14, @11, @8, @16, @7, @19, @3, @17, @2, @15, @10];
    CGFloat theta =	atan2l(yCoordinate, xCoordinate) * 180 / M_PI;
    NSInteger index = (theta + 9) / 20.0;
    score = slices[index];
    CGFloat d = sqrtl((xCoordinate * xCoordinate + yCoordinate * yCoordinate));
    if (d < 0.25) {
        multiplier = @"Double";
        score = @"bullseye";
    } else if (d < (1.25/2)) {
        multiplier = @"Single";
        score = @"bullseye";
    } else if (d < (8.4/2 - .35)) {
        multiplier = @"Single";
    } else if (d < (8.4/2)) {
        multiplier = @"Triple";
    } else if (d < (13.4/2 - .35)) {
        multiplier = @"Single";
    } else if (d < (13.4/2)) {
        multiplier = @"Double";
    } else {
        multiplier = @"Nothing";
        score = @"";
    }

    return [NSString stringWithFormat:@"%@ %@", multiplier, score];
}

@end
