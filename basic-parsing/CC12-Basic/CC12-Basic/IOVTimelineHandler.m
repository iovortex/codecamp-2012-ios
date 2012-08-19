//
//  IOVTimelineHandler.m
//  CC12-Basic
//
//  Created by Travis Fischer on 8/18/12.
//  Copyright (c) 2012 I/O Vortex. All rights reserved.
//

#import "IOVTimelineHandler.h"

@implementation IOVTimelineHandler

+(IOVTimelineHandler*)handler {
    return [[IOVTimelineHandler alloc] init];
}

-(void)handleJSON:(id)jsonObject {
    NSLog(@"JSON: %@", jsonObject);
}

@end
