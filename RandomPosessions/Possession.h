//
//  Possessions.h
//  RandomPosessions
//
//  Created by Tushar Pokle on 2/08/11.
//  Copyright 2011 Poklet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Possession : NSObject
{
    //NSString *possessionName;
//    NSString *serialNumber;
//    int valueInDollars;
    NSDate *dateCreated;
    
}

+ (id) randomPossession;

- (id) initWithPossessionName: (NSString*)name
               valueInDollars: (int)value
                 serialNumber: (NSString*)sNumber
;


@property(nonatomic, copy) NSString* possessionName;
@property(nonatomic, copy) NSString* serialNumber;
@property(nonatomic) int valueInDollars;
@property(nonatomic, copy) NSDate* dateCreated; 


@end
