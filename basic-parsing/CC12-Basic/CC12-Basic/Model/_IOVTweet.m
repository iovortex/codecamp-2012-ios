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

	






@end
