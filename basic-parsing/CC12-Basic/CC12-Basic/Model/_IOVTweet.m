// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to IOVTweet.m instead.

#import "_IOVTweet.h"

const struct IOVTweetAttributes IOVTweetAttributes = {
	.createdAt = @"createdAt",
	.id = @"id",
	.idString = @"idString",
	.text = @"text",
};

const struct IOVTweetRelationships IOVTweetRelationships = {
	.author = @"author",
	.followers = @"followers",
};

const struct IOVTweetFetchedProperties IOVTweetFetchedProperties = {
};

@implementation IOVTweetID
@end

@implementation _IOVTweet

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"IOVTweet" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"IOVTweet";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"IOVTweet" inManagedObjectContext:moc_];
}

- (IOVTweetID*)objectID {
	return (IOVTweetID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
	}

	return keyPaths;
}




@dynamic createdAt;






@dynamic id;



- (int64_t)idValue {
	NSNumber *result = [self id];
	return [result longLongValue];
}

- (void)setIdValue:(int64_t)value_ {
	[self setId:[NSNumber numberWithLongLong:value_]];
}

- (int64_t)primitiveIdValue {
	NSNumber *result = [self primitiveId];
	return [result longLongValue];
}

- (void)setPrimitiveIdValue:(int64_t)value_ {
	[self setPrimitiveId:[NSNumber numberWithLongLong:value_]];
}





@dynamic idString;






@dynamic text;






@dynamic author;

	

@dynamic followers;

	






+ (NSArray*)fetchFetchRequest1:(NSManagedObjectContext*)moc_ tweetId:(NSNumber*)tweetId_ {
	NSError *error = nil;
	NSArray *result = [self fetchFetchRequest1:moc_ tweetId:tweetId_ error:&error];
	if (error) {
#if TARGET_OS_IPHONE
		NSLog(@"error: %@", error);
#else
		[NSApp presentError:error];
#endif
	}
	return result;
}
+ (NSArray*)fetchFetchRequest1:(NSManagedObjectContext*)moc_ tweetId:(NSNumber*)tweetId_ error:(NSError**)error_ {
	NSParameterAssert(moc_);
	NSError *error = nil;
	
	NSManagedObjectModel *model = [[moc_ persistentStoreCoordinator] managedObjectModel];
	
	NSDictionary *substitutionVariables = [NSDictionary dictionaryWithObjectsAndKeys:
														
														tweetId_, @"tweetId",
														
														nil];
										
	NSFetchRequest *fetchRequest = [model fetchRequestFromTemplateWithName:@"FetchRequest1"
													 substitutionVariables:substitutionVariables];
	NSAssert(fetchRequest, @"Can't find fetch request named \"FetchRequest1\".");
	
	NSArray *result = [moc_ executeFetchRequest:fetchRequest error:&error];
	if (error_) *error_ = error;
	return result;
}



@end
