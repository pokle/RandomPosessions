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
    
    for(int i=0; i<10; i++) {
        [items addObject: [Possession randomPossession]];
    }
    
    for(Possession *item in items) {
        NSLog(@"item: %@: ", item);
    }
    
    
    [items release];
    items = nil;

    
    [pool drain];
    return 0;
}

