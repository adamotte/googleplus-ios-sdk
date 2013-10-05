Pod::Spec.new do |s|
  s.name         = "GooglePlus-iOS-SDK"
  s.version      = "1.4.0"
  s.summary      = "Google+ Platform for iOS."
  s.homepage     = "https://developers.google.com/+/mobile/ios/"

  s.license = { :type => 'Copyright', :text => 'Copyright 2009 - 2012 Google, Inc. All rights reserved.' }
  s.author       = 'Google Inc.'
  s.source       = { :git => "https://github.com/adamotte/googleplus-ios-sdk.git",
                     :tag => "v1.4.0" }
  s.platform     = :ios
  s.vendored_frameworks = 'GoogleOpenSource.framework', 'GooglePlus.framework'
  s.resource     = 'GooglePlus.bundle'
  s.frameworks   = 'Security', 'SystemConfiguration', 'AssetsLibrary', 'Foundation', 'CoreLocation', 'CoreMotion', 'CoreGraphics', 'CoreText', 'MediaPlayer', 'UIKit'
  s.requires_arc = false
end
