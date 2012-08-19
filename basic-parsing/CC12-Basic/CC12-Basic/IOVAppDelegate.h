//
//  IOVAppDelegate.h
//  CC12-Basic
//
//  Created by Travis Fischer on 8/11/12.
//  Copyright (c) 2012 I/O Vortex. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IOVAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

-(NSManagedObjectContext*)newManagedObjectContext;


@end
