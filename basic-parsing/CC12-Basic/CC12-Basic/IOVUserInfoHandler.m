//
//  IOVUserInfoHandler.m
//  CC12-Basic
//
//  Created by Travis Fischer on 8/18/12.
//  Copyright (c) 2012 I/O Vortex. All rights reserved.
//

#import "IOVUserInfoHandler.h"
#import "IOVAppDelegate.h"
#import "IOVUser.h"

@interface IOVUserInfoHandler ()

@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;
@end

@implementation IOVUserInfoHandler

+(IOVUserInfoHandler*)handler {
    return [[IOVUserInfoHandler alloc] init];
}

-(id)init {
    self = [super init];
    if (self) {
        IOVAppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
        
        _managedObjectContext = [appDelegate newManagedObjectContext];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleDidSaveNotification:) name:NSManagedObjectContextDidSaveNotification object:nil];
    }
    return self;
}

-(void)handleDidSaveNotification:(NSNotification*)notification {
    [self.managedObjectContext mergeChangesFromContextDidSaveNotification:notification];
}

-(void)handleJSON:(id)jsonObject {
    
    NSLog(@"JSON: %@", jsonObject);
    IOVUser *user;
    
    for (NSDictionary *dict in jsonObject) {
        user = [IOVUser objectFromJSON:dict withParameters:nil andContext:self.managedObjectContext];
        [self.managedObjectContext save:nil];
    }
    
    [[NSNotificationCenter defaultCenter] postNotificationName:kNotificationUpdatedUser object:self userInfo:@{ kUserInfoUserName : user.userName }];
}

@end
