// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to IOVUser.h instead.

#import <CoreData/CoreData.h>


extern const struct IOVUserAttributes {
	__unsafe_unretained NSString *followersCount;
	__unsafe_unretained NSString *friendsCount;
	__unsafe_unretained NSString *info;
	__unsafe_unretained NSString *location;
	__unsafe_unretained NSString *name;
	__unsafe_unretained NSString *profileImageUrl;
	__unsafe_unretained NSString *userId;
	__unsafe_unretained NSString *userName;
} IOVUserAttributes;

extern const struct IOVUserRelationships {
	__unsafe_unretained NSString *timeline;
	__unsafe_unretained NSString *tweets;
} IOVUserRelationships;

extern const struct IOVUserFetchedProperties {
} IOVUserFetchedProperties;

@class IOVTweet;
@class IOVTweet;










@interface IOVUserID : NSManagedObjectID {}
@end

@interface _IOVUser : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (IOVUserID*)objectID;




@property (nonatomic, strong) NSNumber* followersCount;


@property int32_t followersCountValue;
- (int32_t)followersCountValue;
- (void)setFollowersCountValue:(int32_t)value_;

//- (BOOL)validateFollowersCount:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSNumber* friendsCount;


@property int32_t friendsCountValue;
- (int32_t)friendsCountValue;
- (void)setFriendsCountValue:(int32_t)value_;

//- (BOOL)validateFriendsCount:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString* info;


//- (BOOL)validateInfo:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString* location;


//- (BOOL)validateLocation:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString* name;


//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString* profileImageUrl;


//- (BOOL)validateProfileImageUrl:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSNumber* userId;


@property int64_t userIdValue;
- (int64_t)userIdValue;
- (void)setUserIdValue:(int64_t)value_;

//- (BOOL)validateUserId:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString* userName;


//- (BOOL)validateUserName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet* timeline;

- (NSMutableSet*)timelineSet;




@property (nonatomic, strong) NSSet* tweets;

- (NSMutableSet*)tweetsSet;




+ (NSArray*)fetchFetchRequest:(NSManagedObjectContext*)moc_ userId:(NSNumber*)userId_ ;
+ (NSArray*)fetchFetchRequest:(NSManagedObjectContext*)moc_ userId:(NSNumber*)userId_ error:(NSError**)error_;




@end

@interface _IOVUser (CoreDataGeneratedAccessors)

- (void)addTimeline:(NSSet*)value_;
- (void)removeTimeline:(NSSet*)value_;
- (void)addTimelineObject:(IOVTweet*)value_;
- (void)removeTimelineObject:(IOVTweet*)value_;

- (void)addTweets:(NSSet*)value_;
- (void)removeTweets:(NSSet*)value_;
- (void)addTweetsObject:(IOVTweet*)value_;
- (void)removeTweetsObject:(IOVTweet*)value_;

@end

@interface _IOVUser (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveFollowersCount;
- (void)setPrimitiveFollowersCount:(NSNumber*)value;

- (int32_t)primitiveFollowersCountValue;
- (void)setPrimitiveFollowersCountValue:(int32_t)value_;




- (NSNumber*)primitiveFriendsCount;
- (void)setPrimitiveFriendsCount:(NSNumber*)value;

- (int32_t)primitiveFriendsCountValue;
- (void)setPrimitiveFriendsCountValue:(int32_t)value_;




- (NSString*)primitiveInfo;
- (void)setPrimitiveInfo:(NSString*)value;




- (NSString*)primitiveLocation;
- (void)setPrimitiveLocation:(NSString*)value;




- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;




- (NSString*)primitiveProfileImageUrl;
- (void)setPrimitiveProfileImageUrl:(NSString*)value;




- (NSNumber*)primitiveUserId;
- (void)setPrimitiveUserId:(NSNumber*)value;

- (int64_t)primitiveUserIdValue;
- (void)setPrimitiveUserIdValue:(int64_t)value_;




- (NSString*)primitiveUserName;
- (void)setPrimitiveUserName:(NSString*)value;





- (NSMutableSet*)primitiveTimeline;
- (void)setPrimitiveTimeline:(NSMutableSet*)value;



- (NSMutableSet*)primitiveTweets;
- (void)setPrimitiveTweets:(NSMutableSet*)value;


@end
