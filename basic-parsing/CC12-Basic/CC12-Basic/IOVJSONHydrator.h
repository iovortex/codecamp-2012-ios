//
//  IOVJSONHydrator.h
//  CC12-Basic
//
//  Created by Travis Fischer on 8/18/12.
//  Copyright (c) 2012 I/O Vortex. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol IOVJSONHydrator <NSObject>

+(id)objectFromJSON:(NSDictionary*)jsonDict withParameters:(NSDictionary*) paramsDict andContext:(NSManagedObjectContext*)context;

-(void)updateFromJSON:(NSDictionary*)jsonDict withParameters:(NSDictionary*)paramsDict;

@optional

-(NSDictionary*)dehydrateToJSON;

@end
