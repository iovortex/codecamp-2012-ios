#import "IOVUser.h"
#import "IOVTweet.h"

static NSString *const kJSONKeyUserId = @"id";
static NSString *const kJSONKeyUserName = @"screen_name";
static NSString *const kJSONKeyFollowerCount = @"followers_count";
static NSString *const kJSONKeyFriendCount = @"friends_count";
static NSString *const kJSONKeyInfo = @"description";
static NSString *const kJSONKeyLocation = @"location";
static NSString *const kJSONKeyName = @"name";
static NSString *const kJSONKeyProfileImage = @"profile_image_url";
static NSString *const kJSONKeyStatus = @"status";

@implementation IOVUser

// Custom logic goes here.

+(id)objectFromJSON:(NSDictionary *)jsonDict withParameters:(NSDictionary *)paramsDict andContext:(NSManagedObjectContext *)context {
    
    NSNumber *userId = [jsonDict objectForKey:kJSONKeyUserId];
    
    
    IOVUser *user;
    NSArray *fetchArray = [IOVUser fetchFetchRequest:context userId:userId];
    if ([fetchArray count] > 0) {
        user = [fetchArray objectAtIndex:0];
    } else {
        user = [IOVUser insertInManagedObjectContext:context];
        user.userId = userId;
    }
    
    [user updateFromJSON:jsonDict withParameters:paramsDict];
    [context save:nil];
    
    return user;
}

-(void)updateFromJSON:(NSDictionary *)jsonDict withParameters:(NSDictionary *)paramsDict {
    
    self.name = [jsonDict objectForKey:kJSONKeyName];
    self.userName = [jsonDict objectForKey:kJSONKeyUserName];
    self.location = [jsonDict objectForKey:kJSONKeyLocation];
    self.profileImageUrl = [jsonDict objectForKey:kJSONKeyProfileImage];
    self.followersCount = [jsonDict objectForKey:kJSONKeyFollowerCount];
    self.friendsCount = [jsonDict objectForKey:kJSONKeyFriendCount];
    self.info = [jsonDict objectForKey:kJSONKeyInfo];
    
    NSDictionary *tweetDict = [jsonDict objectForKey:kJSONKeyStatus];
    
//    IOVTweet *statusTweet = [IOVTweet objectFromJSON:tweetDict withParameters:nil andContext:self.managedObjectContext];
//    statusTweet.author = self;
    
}

@end
