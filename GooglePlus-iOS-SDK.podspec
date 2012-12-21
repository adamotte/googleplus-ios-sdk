Pod::Spec.new do |s|
  s.name         = "GooglePlus-iOS-SDK"
  s.version      = "1.1.0"
  s.summary      = "Google+ Plateform for iOS."
  s.homepage     = "https://developers.google.com/+/mobile/ios/"

  s.license = { :type => 'Copyright', :text => 'Copyright 2009 - 2012 Google, Inc. All rights reserved.' }
  s.author       = 'Google Inc.'
  s.source       = { :git => "https://github.com/adamotte/googleplus-ios-sdk.git" }
  s.platform     = :ios
  s.source_files = 'OpenSource/**/*.{h,m,c}', 'lib/*.h' 
  s.resources = 'Resources/*.png'
  s.libraries = 'lib/*.a'
  s.frameworks = 'Security', 'SystemConfiguration'
  s.requires_arc = false
end
