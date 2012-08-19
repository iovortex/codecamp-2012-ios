//
//  IOVTweetNetworkStack.h
//  CC12-Basic
//
//  Created by Travis Fischer on 8/18/12.
//  Copyright (c) 2012 I/O Vortex. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IOVTweetNetworkStack : NSObject

+(IOVTweetNetworkStack*)sharedNetworkStack;

-(void)requestTimelineForUser:(NSString*)username;
-(void)requestUserInfoForUser:(NSString*)username;

-(void)setManagedObjectContext:(NSManagedObjectContext*)context;

@end
