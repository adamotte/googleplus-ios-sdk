Google Plus SDK for iOS 1.4.0
=============================

This Google+ iOS SDK allows users to sign in and share with Google+ from
third-party apps.  The SDK also provides Google+ APIs for the app to access
the list of people in user-selected circles and to read and write user's app
activities.  The SDK contains the following files:

README  -- This file.

Changelog  -- The versions and changes of the SDK.

GooglePlus.framework/  -- The Google+ SDK framework.

GooglePlus.bundle/  -- Resources that can be used in your app.

GoogleOpenSource.framework/ -- A framework containing all the open source files
                               used by the SDK.
                               Either add this framework or add individual
                               files in OpenSource/ directory into your project.

OpenSource/  -- Google open source files used by the SDK.
                This contains the same code as in GoogleOpenSource.framework.
                If you're not adding GoogleOpenSource.framework, add the files
                you need from this directory into your project.

SampleCode/  -- Sample code for your reference only.
                Do not include this in your project.
   GooglePlusSample.xcodeproj/  -- The Xcode project.


Changelog
=============================

2014-09-12  -- v1.7.1
- Bug fixes

2014-05-22  -- v1.7.0
- Support for one-time authorization code
- Fixed bug where OAuth token sometimes expires without being able to refresh
- Other bug fixes

2014-01-28  -- v1.5.1
- Allow using the reversed client ID for redirect URL scheme to sign in

2013-12-12  -- v1.5.0
- Suggested recipients based on affinity and relevance
- Sharing to all Google contacts
- Comprehensive list of contacts for search
- Allow users to add people they are sharing with to a circle
- Bug fixes

2013-10-09  -- v1.4.1
- Bug fixes

2013-09-30  -- v1.4.0
- Native sharebox
- ID token support
- Bug fixes

2013-05-07  -- v1.3.0
- Packaged as framework
- Bug fixes

2013-02-26  -- v1.2.1
- Interactive posts on Google+ share
- Improved sign-in and share APIs to use shared instances
- Automatic retrieval of user identity upon sign-in
- Expanded Google+ moments API support
- Updated sample app

2012-10-12  -- v1.1.0
- Content deep linking on Google+ share
- iOS6 support
- Shortened class names
- Bug fixes

2012-06-25  -- v1.0.0
- Google+ sign-in button, share plugin, and Google+ history integration library
  with sample app.


Developpers 
=============================

By using Google Developers (the "Service"), you agree to be bound by our Google
Terms of Services located at http://www.google.com/accounts/TOS as well as
these additional terms. Google may change these terms from time to time and
post any modified terms at http://developers.google.com/readme/terms/. You
understand and agree that if you use the Service after the date on which these
terms have changed, Google will treat your use as acceptance of the updated
terms.

[Developpers Google](https://developers.google.com/+/mobile/ios/getting-started)


API Reference 
=============================

[API Reference](https://developers.google.com/+/mobile/ios/api/)
