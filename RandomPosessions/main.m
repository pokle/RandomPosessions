//
//  main.m
//  RandomPosessions
//
//  Created by Tushar Pokle on 1/08/11.
//  Copyright 2011 Poklet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Possession.h"

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

    
    Possession *p = [Possession new];
    [p setPossessionName: @"Red Sofa"];
    [p setValueInDollars: 100];
    [p setSerialNumber: @"B12ic"];
    NSLog(@"I have: %@", p);

    
    [items release];
    items = nil;

    
    for(int i=0; i<10; i++) {
        NSLog(@"rnd: %@", [Possession randomPossession]);
    }
    

    [pool drain];
    return 0;
}

