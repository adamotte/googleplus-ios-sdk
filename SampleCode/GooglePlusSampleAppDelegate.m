//
//  GooglePlusSampleAppDelegate.m
//
//  Copyright 2012 Google Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#import "GooglePlusSampleAppDelegate.h"

#import "GooglePlusSampleMasterViewController.h"
#import "GPPDeepLink.h"
#import "GPPSignIn.h"
#import "GPPSignInButton.h"

@implementation GooglePlusSampleAppDelegate

@synthesize window = window_;
@synthesize navigationController = navigationController_;
@synthesize signInButton = signInButton_;
@synthesize auth = auth_;
@synthesize share = share_;
@synthesize plusMomentsWriteScope = plusMomentsWriteScope_;

// DO NOT USE THIS CLIENT ID. IT WILL NOT WORK FOR YOUR APP.
// Please use the client ID created for you by Google.
static NSString * const kClientID =
    @"122385832599-2mcvobo565un3ab7d6d06m6fjemocto9.apps.googleusercontent.com";

+ (NSString *)clientID {
  return kClientID;
}

#pragma mark Object life-cycle.

- (void)dealloc {
  [window_ release];
  [navigationController_ release];
  [signInButton_ release];
  [auth_ release];
  [share_ release];
  [super dealloc];
}

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  plusMomentsWriteScope_ = YES;

  self.window = [[[UIWindow alloc]
      initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
  GooglePlusSampleMasterViewController *masterViewController =
      [[[GooglePlusSampleMasterViewController alloc]
          initWithNibName:@"GooglePlusSampleMasterViewController"
                   bundle:nil] autorelease];
  self.navigationController =
      [[[UINavigationController alloc]
          initWithRootViewController:masterViewController] autorelease];
  self.window.rootViewController = self.navigationController;
  [self.window makeKeyAndVisible];

  // Read Google+ deep-link data.
  GPPDeepLink *deepLink = [GPPDeepLink readDeepLinkAfterInstall];
  if (deepLink) {
    UIAlertView *alert = [[[UIAlertView alloc]
        initWithTitle:@"Read Deep-link Data"
              message:[deepLink deepLinkID]
             delegate:nil
    cancelButtonTitle:@"OK"
    otherButtonTitles:nil] autorelease];
    [alert show];
  }
  return YES;
}

- (BOOL)application:(UIApplication *)application
              openURL:(NSURL *)url
    sourceApplication:(NSString *)sourceApplication
           annotation:(id)annotation {
  // Handle Google+ share dialog URL.
  if ([share_ handleURL:url
      sourceApplication:sourceApplication
             annotation:annotation]) {
    return YES;
  }

  // Handle Google+ sign-in button URL.
  if ([signInButton_ handleURL:url
             sourceApplication:sourceApplication
                    annotation:annotation]) {
    return YES;
  }

  // Handle Google+ deep-link data URL.
  GPPDeepLink *deepLink = [GPPDeepLink handleURL:url
                               sourceApplication:sourceApplication
                                      annotation:annotation];
  if (deepLink) {
    UIAlertView *alert = [[[UIAlertView alloc]
        initWithTitle:@"Handle Deep-link Data"
              message:[deepLink deepLinkID]
             delegate:nil
    cancelButtonTitle:@"OK"
    otherButtonTitles:nil] autorelease];
    [alert show];
  }
  return NO;
}

@end
