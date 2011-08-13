//
//  Possessions.m
//  RandomPosessions
//
//  Created by Tushar Pokle on 2/08/11.
//  Copyright 2011 Poklet. All rights reserved.
//

#import "Possession.h"

@implementation Possession


+ (id) randomPossession
{
    NSArray *randomAdjectiveList = [NSArray arrayWithObjects: @"Fluffy", @"Rusty", @"Shiny", nil];
    NSArray *randomNounList = [NSArray arrayWithObjects: @"Bear", @"Spork", @"Mac", nil];
    
    int adjectiveIndex = (int)(rand() % [randomAdjectiveList count]);
    int nounIndex = (int)(rand() % [randomNounList count]);
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                            [randomAdjectiveList objectAtIndex:adjectiveIndex],
                            [randomNounList objectAtIndex:nounIndex]];
    
    int randomValue = rand() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10];
    
    Possession *newPossession = [[self alloc] initWithPossessionName:randomName 
                                                       valueInDollars:randomValue
                                                         serialNumber:randomSerialNumber];
    
    return [newPossession autorelease];
}



// This is my designated initialiser. It's the one that calls [super init]
- (id) initWithPossessionName: (NSString*)name
               valueInDollars: (int)value
                 serialNumber: (NSString*)sNumber
{
    [super init];
    
    if (self) {
        [self setPossessionName: name];
        [self setValueInDollars: value];
        [self setSerialNumber: sNumber];
        dateCreated = [NSDate new];        
    }
    
    
    return self;
}


- (id) init 
{
    return [self initWithPossessionName:@"A Posession" valueInDollars:0 serialNumber: @""];
}

- (void) dealloc
{
    // Setting these to nil via the accessors will release the old values.
    [self setPossessionName: nil];
    [self setSerialNumber: nil];
    [self setDateCreated: nil];
    [super dealloc];
}



- (NSString *)description { 
    return [NSString stringWithFormat:@"%@ -- %@ (%@): Worth $%d, recorded on %@", 
            isa,
            [self possessionName],
            [self serialNumber],
            [self valueInDollars],
            [self dateCreated]];
}


@synthesize possessionName, serialNumber, valueInDollars, dateCreated;

@end
