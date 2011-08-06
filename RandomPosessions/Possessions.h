//
//  Possessions.h
//  RandomPosessions
//
//  Created by Tushar Pokle on 2/08/11.
//  Copyright 2011 Poklet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Possessions : NSObject
{
    NSString *possessionName;
    NSString *serialNumber;
    int valueInDollars;
    NSDate *dateCreated;
    
}

- (void) setPossessionName: (NSString*)str;
- (NSString*) possessionName;

- (void) setSerialNumber: (NSString*)str;
- (NSString*) serialNumber;

- (void) setValueInDollars: (int)val;
- (int) valueInDollars;

- (NSDate*) dateCreated;


@end
