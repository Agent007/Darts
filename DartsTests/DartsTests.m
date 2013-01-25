//
//  DartsTests.m
//  DartsTests
//
//  Created by cdei dev on 1/25/13.
//  Copyright (c) 2013 cdei dev. All rights reserved.
//

#import "DartsTests.h"
#import "DartScore.h"

@implementation DartsTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testDoubleBullseye
{
    STAssertEqualObjects([DartScore scoreWithX:0 Y:0], @"Double bullseye", nil);
}

- (void)testSingleBullseye
{
    STAssertEqualObjects([DartScore scoreWithX:0.3 Y:0.3], @"Single bullseye", nil);
}

- (void)testDoubleSix
{
    STAssertEqualObjects([DartScore scoreWithX:6.6 Y:0], @"Double 6", nil);
}

- (void)testTripleSix
{
    STAssertEqualObjects([DartScore scoreWithX:4.1 Y:0], @"Triple 6", nil);
}

- (void)testSingleSix
{
    STAssertEqualObjects([DartScore scoreWithX:2 Y:0], @"Single 6", nil);
}

- (void)testSingleSix2
{
    STAssertEqualObjects([DartScore scoreWithX:5 Y:0], @"Single 6", nil);
}

- (void)testNothing
{
    STAssertEqualObjects([DartScore scoreWithX:15 Y:0], @"Nothing ", nil);
}

- (void)testTripleTwelve
{
    STAssertEqualObjects([DartScore scoreWithX:-1.861 Y:3.653], @"Triple 5", nil);
}


//- (void)test<#number#>
//{
//    STAssertEqualObjects([DartScore scoreWithX:<#x#> Y:<#y#>], @"<#Double bullseye#>", nil);
//}

@end
