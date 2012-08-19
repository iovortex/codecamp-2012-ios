//
//  IOVUserInfoHandler.m
//  CC12-Basic
//
//  Created by Travis Fischer on 8/18/12.
//  Copyright (c) 2012 I/O Vortex. All rights reserved.
//

#import "IOVUserInfoHandler.h"

@implementation IOVUserInfoHandler

+(IOVUserInfoHandler*)handler {
    return [[IOVUserInfoHandler alloc] init];
}

-(void)handleJSON:(id)jsonObject {
    
    NSLog(@"JSON: %@", jsonObject);
    
}

@end
