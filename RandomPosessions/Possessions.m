//
//  Possessions.m
//  RandomPosessions
//
//  Created by Tushar Pokle on 2/08/11.
//  Copyright 2011 Poklet. All rights reserved.
//

#import "Possessions.h"

@implementation Possessions

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
