//
//  IOVTweetNetworkStack.m
//  CC12-Basic
//
//  Created by Travis Fischer on 8/18/12.
//  Copyright (c) 2012 I/O Vortex. All rights reserved.
//

#import "IOVTweetNetworkStack.h"
#import "AFJSONRequestOperation.h"
#import "IOVTimelineHandler.h"
#import "IOVUserInfoHandler.h"

@interface IOVTweetNetworkStack ()
@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;
@end

@implementation IOVTweetNetworkStack

+(IOVTweetNetworkStack*)sharedNetworkStack {
    static dispatch_once_t pred;
    static IOVTweetNetworkStack *shared = nil;
    
    dispatch_once(&pred, ^{
        shared = [[IOVTweetNetworkStack alloc] init];
    });
    return shared;
}

-(void)requestTimelineForUser:(NSString*)username {
    
    NSString *urlString = [NSString stringWithFormat:@"https://api.twitter.com/1/statuses/user_timeline.json?include_entities=true&include_rts=true&screen_name=%@&count=20", username];
    
    [self requestWithUrl:[NSURL URLWithString:urlString] andHandler:[IOVTimelineHandler handler]];
    
}

-(void)requestUserInfoForUser:(NSString*)username {
    NSString *urlString = [NSString stringWithFormat:@"https://api.twitter.com/1/users/lookup.json?screen_name=%@&include_entities=true", username];
    
    [self requestWithUrl:[NSURL URLWithString:urlString] andHandler:[IOVUserInfoHandler handler]];
}

-(void)setManagedObjectContext:(NSManagedObjectContext*)context {
    self.managedObjectContext = context;
}


-(void)requestWithUrl:(NSURL*)url andHandler:(id<IOVJSONHandler>)handler {
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    AFJSONRequestOperation *operation = [AFJSONRequestOperation JSONRequestOperationWithRequest:request success:^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON) {
        
        [handler handleJSON:JSON];
        
    } failure:nil];
    [operation start];
}

@end
