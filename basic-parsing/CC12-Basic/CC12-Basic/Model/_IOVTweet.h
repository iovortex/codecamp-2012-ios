// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to IOVTweet.h instead.

#import <CoreData/CoreData.h>


extern const struct IOVTweetAttributes {
	__unsafe_unretained NSString *createdAt;
	__unsafe_unretained NSString *id;
	__unsafe_unretained NSString *idString;
	__unsafe_unretained NSString *text;
} IOVTweetAttributes;

extern const struct IOVTweetRelationships {
	__unsafe_unretained NSString *author;
	__unsafe_unretained NSString *followers;
} IOVTweetRelationships;

extern const struct IOVTweetFetchedProperties {
} IOVTweetFetchedProperties;

@class IOVUser;
@class IOVUser;






@interface IOVTweetID : NSManagedObjectID {}
@end

@interface _IOVTweet : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (IOVTweetID*)objectID;




@property (nonatomic, strong) NSDate* createdAt;


//- (BOOL)validateCreatedAt:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSNumber* id;


@property int64_t idValue;
- (int64_t)idValue;
- (void)setIdValue:(int64_t)value_;

//- (BOOL)validateId:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString* idString;


//- (BOOL)validateIdString:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSString* text;


//- (BOOL)validateText:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) IOVUser* author;

//- (BOOL)validateAuthor:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) IOVUser* followers;

//- (BOOL)validateFollowers:(id*)value_ error:(NSError**)error_;




+ (NSArray*)fetchFetchRequest1:(NSManagedObjectContext*)moc_ tweetId:(NSNumber*)tweetId_ ;
+ (NSArray*)fetchFetchRequest1:(NSManagedObjectContext*)moc_ tweetId:(NSNumber*)tweetId_ error:(NSError**)error_;




@end

@interface _IOVTweet (CoreDataGeneratedAccessors)

@end

@interface _IOVTweet (CoreDataGeneratedPrimitiveAccessors)


- (NSDate*)primitiveCreatedAt;
- (void)setPrimitiveCreatedAt:(NSDate*)value;




- (NSNumber*)primitiveId;
- (void)setPrimitiveId:(NSNumber*)value;

- (int64_t)primitiveIdValue;
- (void)setPrimitiveIdValue:(int64_t)value_;




- (NSString*)primitiveIdString;
- (void)setPrimitiveIdString:(NSString*)value;




- (NSString*)primitiveText;
- (void)setPrimitiveText:(NSString*)value;





- (IOVUser*)primitiveAuthor;
- (void)setPrimitiveAuthor:(IOVUser*)value;



- (IOVUser*)primitiveFollowers;
- (void)setPrimitiveFollowers:(IOVUser*)value;


@end
