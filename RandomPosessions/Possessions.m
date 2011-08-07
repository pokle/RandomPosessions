//
//  Possessions.m
//  RandomPosessions
//
//  Created by Tushar Pokle on 2/08/11.
//  Copyright 2011 Poklet. All rights reserved.
//

#import "Possessions.h"

@implementation Possessions


+ (id) randomPossession
{
    NSArray *randomAdjectiveList = [NSArray arrayWithObjects: @"Fluffy", @"Rusty", @"Shiny", nil];
    NSArray *randomNounList = [NSArray arrayWithObjects: @"Bear", @"Spork", @"Mac", nil];
    
    int adjectiveIndex = rand() % [randomAdjectiveList count];
    int nounIndex = (int)rand() % [randomNounList count];
    
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
    
    Possessions *newPossession = [[self alloc] initWithPossessionName:randomName 
                                                       valueInDollars:randomValue
                                                         serialNumber:randomSerialNumber];

    return newPossession;
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



- (NSString *)description { 
    NSString *descriptionString = 
        [[NSString alloc] initWithFormat:@"%@ -- %@ (%@): Worth $%d, recorded on %@", 
            isa,
            possessionName,
            serialNumber,
            valueInDollars,
            dateCreated];

    return descriptionString;
}

- (void) setPossessionName: (NSString*)str
{
    possessionName = str;
}

- (NSString*) possessionName
{
    return possessionName;
}

- (void) setSerialNumber: (NSString*)str
{
    serialNumber = str;
}

- (NSString*) serialNumber
{
    return serialNumber;
}

- (void) setValueInDollars: (int)val
{
    valueInDollars = val;
}

- (int) valueInDollars
{
    return valueInDollars;
}

- (NSDate*) dateCreated
{
    return dateCreated;
}





@end
