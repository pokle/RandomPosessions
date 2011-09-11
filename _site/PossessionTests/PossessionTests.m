//
//  PossessionTests.m
//  PossessionTests
//
//  Created by Tushar Pokle on 13/08/11.
//  Copyright 2011 Poklet. All rights reserved.
//

#import "PossessionTests.h"

@implementation PossessionTests

- (void)setUp
{
    [super setUp];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testThatSetPossessionNameTakesACopyOfThePassedInString
{
    NSAutoreleasePool *pool = [NSAutoreleasePool new];

    Possession* poss = [[Possession new] autorelease];

    NSString* str = [NSMutableString stringWithCString: "Boo!" encoding: NSUTF8StringEncoding];
    STAssertEquals([str retainCount], (NSUInteger)1, @"Retain count wasn't one :-(");

    [poss setPossessionName: str];
    STAssertEquals([str retainCount], (NSUInteger)1, @"Retain count wasn't one :-(");

    STAssertEqualObjects(@"Boo!", [poss possessionName], @"possessionName was %@", [poss possessionName]);
    STAssertTrue(str != [poss possessionName], @"Shouldn't be the same object");
    
    [pool drain];
}

@end
