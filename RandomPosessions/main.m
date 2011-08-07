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
    NSLog(@"I have: %@", p);

    
    [items release];
    items = nil;

    
    for(int i=0; i<10; i++) {
        NSLog(@"rnd: %@", [Possessions randomPossession]);
    }
    

    [pool drain];
    return 0;
}

