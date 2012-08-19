//
//  IOVViewController.m
//  CC12-Basic
//
//  Created by Travis Fischer on 8/11/12.
//  Copyright (c) 2012 I/O Vortex. All rights reserved.
//

#import "IOVViewController.h"
#import "IOVTweetNetworkStack.h"
#import "IOVConstants.h"

@interface IOVViewController ()
-(void)loadTimelineForUser:(NSString*)username;
-(void)loadUserInfoForUser:(NSString*)username;
@end

@implementation IOVViewController
@synthesize usernameField;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setUsernameField:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    if ([segue.identifier isEqualToString:kMainTimelineSequeId]) {
        [self loadTimelineForUser:self.usernameField.text];
    } else if ([segue.identifier isEqualToString:kMainUserInfoSequeId]) {
        [self loadUserInfoForUser:self.usernameField.text];
    }
}

-(void)loadTimelineForUser:(NSString*)username {
    [[IOVTweetNetworkStack sharedNetworkStack] requestTimelineForUser:username];
}

-(void)loadUserInfoForUser:(NSString*)username {
    [[IOVTweetNetworkStack sharedNetworkStack] requestUserInfoForUser:username];
}

@end
