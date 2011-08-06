//
//  main.m
//  RandomPosessions
//
//  Created by Tushar Pokle on 1/08/11.
//  Copyright 2011 Poklet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Possessions.h"

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [NSAutoreleasePool new];

    NSMutableArray *items = [NSMutableArray new];

    [items addObject:@"one"];
    [items addObject:@"two"];
    [items addObject:@"three"];
    [items insertObject:@"ZERO"  atIndex:0];
    
    
    NSLog(@"items: %@", items);
    NSLog(@"now: %@", [[NSDate date] descriptionWithLocale:[NSLocale systemLocale]]);

    
    Possessions *p = [Possessions new];
    [p setPossessionName: @"Red Sofa"];
    [p setValueInDollars: 100];
    [p setSerialNumber: @"B12ic"];
    NSLog(@"p: %@ %d %@ %@", [p dateCreated], [p valueInDollars], [p serialNumber], [p possessionName]);

    
    
    [items release];
    items = nil;


    [pool drain];
    return 0;
}

