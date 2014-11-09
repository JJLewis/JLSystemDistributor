//
//  JLSystemDistributor.m
//
//
//  Created by Lewis, Jordan on 2/22/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "JLSystemDistributor.h"

@implementation JLSystemDistributor

// @synthesize

static JLSystemDistributor *sharedDistributor = nil;

+ (JLSystemDistributor *) sharedDistributor {
    @synchronized(self){
        if (sharedDistributor == nil){
            sharedDistributor = [[self alloc] init];
        }
    }
    return sharedDistributor;
}

@end
