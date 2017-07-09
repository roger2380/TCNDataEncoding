#
# Be sure to run `pod lib lint TCNDataEncoding.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TCNDataEncoding'
  s.version          = '0.0.1'
  s.summary          = 'A short description of TCNDataEncoding.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'ssh://git@git.1kxun.com:9922/ios/TCNDataEncoding.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '唐艺源' => 'tyy@shtruecolor.com' }
  s.source           = { :git => 'ssh://git@git.1kxun.com:9922/ios/TCNDataEncoding.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.subspec 'ras-base64' do |sp|
    sp.source_files  = "TCNDataEncoding/**/*.{h,m}"
    sp.requires_arc = true
    sp.public_header_files = "TCNDataEncoding/**/*.h"
  end

  s.subspec 'rsa' do |sp|
    sp.source_files  = "TCNDataEncoding/RSA/*.{h,m}"
    sp.requires_arc = true
    sp.public_header_files = "TCNDataEncoding/RSA/*.h"
  end
    
  # s.resource_bundles = {
  #   'test' => ['test/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
