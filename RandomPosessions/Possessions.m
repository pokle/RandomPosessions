//
//  Possessions.m
//  RandomPosessions
//
//  Created by Tushar Pokle on 2/08/11.
//  Copyright 2011 Poklet. All rights reserved.
//

#import "Possessions.h"

@implementation Possessions

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
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
