// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to IOVUser.m instead.

#import "_IOVUser.h"

const struct IOVUserAttributes IOVUserAttributes = {
	.followersCount = @"followersCount",
	.friendsCount = @"friendsCount",
	.info = @"info",
	.location = @"location",
	.name = @"name",
	.profileImageUrl = @"profileImageUrl",
	.userId = @"userId",
	.userName = @"userName",
};

const struct IOVUserRelationships IOVUserRelationships = {
	.timeline = @"timeline",
	.tweets = @"tweets",
};

const struct IOVUserFetchedProperties IOVUserFetchedProperties = {
};

@implementation IOVUserID
@end

@implementation _IOVUser

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"IOVUser" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"IOVUser";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"IOVUser" inManagedObjectContext:moc_];
}

- (IOVUserID*)objectID {
	return (IOVUserID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"friendsCountValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"friendsCount"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
	}
	if ([key isEqualToString:@"userIdValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"userId"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
	}

	return keyPaths;
}




@dynamic followersCount;






@dynamic friendsCount;



- (int32_t)friendsCountValue {
	NSNumber *result = [self friendsCount];
	return [result intValue];
}

- (void)setFriendsCountValue:(int32_t)value_ {
	[self setFriendsCount:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveFriendsCountValue {
	NSNumber *result = [self primitiveFriendsCount];
	return [result intValue];
}

- (void)setPrimitiveFriendsCountValue:(int32_t)value_ {
	[self setPrimitiveFriendsCount:[NSNumber numberWithInt:value_]];
}





@dynamic info;






@dynamic location;






@dynamic name;






@dynamic profileImageUrl;






@dynamic userId;



- (int64_t)userIdValue {
	NSNumber *result = [self userId];
	return [result longLongValue];
}

- (void)setUserIdValue:(int64_t)value_ {
	[self setUserId:[NSNumber numberWithLongLong:value_]];
}

- (int64_t)primitiveUserIdValue {
	NSNumber *result = [self primitiveUserId];
	return [result longLongValue];
}

- (void)setPrimitiveUserIdValue:(int64_t)value_ {
	[self setPrimitiveUserId:[NSNumber numberWithLongLong:value_]];
}





@dynamic userName;






@dynamic timeline;

	
- (NSMutableSet*)timelineSet {
	[self willAccessValueForKey:@"timeline"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"timeline"];
  
	[self didAccessValueForKey:@"timeline"];
	return result;
}
	

@dynamic tweets;

	
- (NSMutableSet*)tweetsSet {
	[self willAccessValueForKey:@"tweets"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"tweets"];
  
	[self didAccessValueForKey:@"tweets"];
	return result;
}
	






@end
