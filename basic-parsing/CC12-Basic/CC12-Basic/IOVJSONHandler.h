//
//  IOVJSONHandler.h
//  CC12-Basic
//
//  Created by Travis Fischer on 8/18/12.
//  Copyright (c) 2012 I/O Vortex. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol IOVJSONHandler <NSObject>

-(void)handleJSON:(id)jsonObject;

@end
